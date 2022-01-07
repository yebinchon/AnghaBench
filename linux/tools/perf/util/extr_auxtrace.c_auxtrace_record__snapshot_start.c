
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auxtrace_record {int (* snapshot_start ) (struct auxtrace_record*) ;} ;


 int stub1 (struct auxtrace_record*) ;

int auxtrace_record__snapshot_start(struct auxtrace_record *itr)
{
 if (itr && itr->snapshot_start)
  return itr->snapshot_start(itr);
 return 0;
}
