
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct auxtrace_record {int (* find_snapshot ) (struct auxtrace_record*,int,struct auxtrace_mmap*,unsigned char*,int *,int *) ;} ;
struct auxtrace_mmap {int dummy; } ;


 int stub1 (struct auxtrace_record*,int,struct auxtrace_mmap*,unsigned char*,int *,int *) ;

int auxtrace_record__find_snapshot(struct auxtrace_record *itr, int idx,
       struct auxtrace_mmap *mm,
       unsigned char *data, u64 *head, u64 *old)
{
 if (itr && itr->find_snapshot)
  return itr->find_snapshot(itr, idx, mm, data, head, old);
 return 0;
}
