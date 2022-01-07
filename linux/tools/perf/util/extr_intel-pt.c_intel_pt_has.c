
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int size; } ;
struct perf_record_auxtrace_info {TYPE_1__ header; } ;



__attribute__((used)) static bool intel_pt_has(struct perf_record_auxtrace_info *auxtrace_info, int pos)
{
 return auxtrace_info->header.size >=
  sizeof(struct perf_record_auxtrace_info) + (sizeof(u64) * (pos + 1));
}
