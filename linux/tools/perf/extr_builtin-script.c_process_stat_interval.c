
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int (* process_stat_interval ) (int ) ;} ;


 TYPE_1__* scripting_ops ;
 int stub1 (int ) ;

__attribute__((used)) static void process_stat_interval(u64 tstamp)
{
 if (scripting_ops && scripting_ops->process_stat_interval)
  scripting_ops->process_stat_interval(tstamp);
}
