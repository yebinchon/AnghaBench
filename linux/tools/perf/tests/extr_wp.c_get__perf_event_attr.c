
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int size; int bp_type; unsigned long bp_addr; unsigned long bp_len; int sample_period; int exclude_kernel; int exclude_hv; int sample_type; scalar_t__ config; int type; } ;


 int PERF_SAMPLE_IP ;
 int PERF_TYPE_BREAKPOINT ;
 int memset (struct perf_event_attr*,int ,int) ;

__attribute__((used)) static void get__perf_event_attr(struct perf_event_attr *attr, int wp_type,
     void *wp_addr, unsigned long wp_len)
{
 memset(attr, 0, sizeof(struct perf_event_attr));
 attr->type = PERF_TYPE_BREAKPOINT;
 attr->size = sizeof(struct perf_event_attr);
 attr->config = 0;
 attr->bp_type = wp_type;
 attr->bp_addr = (unsigned long)wp_addr;
 attr->bp_len = wp_len;
 attr->sample_period = 1;
 attr->sample_type = PERF_SAMPLE_IP;
 attr->exclude_kernel = 1;
 attr->exclude_hv = 1;
}
