
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int bp_type; } ;


 int get__perf_event_attr (struct perf_event_attr*,int,void*,unsigned long) ;
 int perf_event_open_cloexec_flag () ;
 int pr_debug (char*,int ) ;
 int sys_perf_event_open (struct perf_event_attr*,int ,int,int,int ) ;

__attribute__((used)) static int __event(int wp_type, void *wp_addr, unsigned long wp_len)
{
 int fd;
 struct perf_event_attr attr;

 get__perf_event_attr(&attr, wp_type, wp_addr, wp_len);
 fd = sys_perf_event_open(&attr, 0, -1, -1,
     perf_event_open_cloexec_flag());
 if (fd < 0)
  pr_debug("failed opening event %x\n", attr.bp_type);

 return fd;
}
