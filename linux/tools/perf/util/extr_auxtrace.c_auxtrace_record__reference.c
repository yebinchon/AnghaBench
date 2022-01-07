
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct auxtrace_record {int (* reference ) (struct auxtrace_record*) ;} ;


 int stub1 (struct auxtrace_record*) ;

u64 auxtrace_record__reference(struct auxtrace_record *itr)
{
 if (itr)
  return itr->reference(itr);
 return 0;
}
