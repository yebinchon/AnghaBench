
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auxtrace_record {int (* free ) (struct auxtrace_record*) ;} ;


 int stub1 (struct auxtrace_record*) ;

void auxtrace_record__free(struct auxtrace_record *itr)
{
 if (itr)
  itr->free(itr);
}
