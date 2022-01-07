
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct evsel {int dummy; } ;
struct TYPE_2__ {int (* process_stat ) (int *,struct evsel*,int ) ;} ;


 int __process_stat (struct evsel*,int ) ;
 TYPE_1__* scripting_ops ;
 int stat_config ;
 int stub1 (int *,struct evsel*,int ) ;

__attribute__((used)) static void process_stat(struct evsel *counter, u64 tstamp)
{
 if (scripting_ops && scripting_ops->process_stat)
  scripting_ops->process_stat(&stat_config, counter, tstamp);
 else
  __process_stat(counter, tstamp);
}
