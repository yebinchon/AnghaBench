
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int dummy; } ;
struct auxtrace_record {size_t (* info_priv_size ) (struct auxtrace_record*,struct evlist*) ;} ;


 size_t stub1 (struct auxtrace_record*,struct evlist*) ;

size_t auxtrace_record__info_priv_size(struct auxtrace_record *itr,
           struct evlist *evlist)
{
 if (itr)
  return itr->info_priv_size(itr, evlist);
 return 0;
}
