
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct record_opts {int dummy; } ;
struct evlist {int dummy; } ;
struct auxtrace_record {int (* recording_options ) (struct auxtrace_record*,struct evlist*,struct record_opts*) ;} ;


 int stub1 (struct auxtrace_record*,struct evlist*,struct record_opts*) ;

int auxtrace_record__options(struct auxtrace_record *itr,
        struct evlist *evlist,
        struct record_opts *opts)
{
 if (itr)
  return itr->recording_options(itr, evlist, opts);
 return 0;
}
