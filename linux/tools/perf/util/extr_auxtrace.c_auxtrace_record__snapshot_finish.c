
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auxtrace_record {int (* snapshot_finish ) (struct auxtrace_record*) ;} ;


 int stub1 (struct auxtrace_record*) ;

int auxtrace_record__snapshot_finish(struct auxtrace_record *itr, bool on_exit)
{
 if (!on_exit && itr && itr->snapshot_finish)
  return itr->snapshot_finish(itr);
 return 0;
}
