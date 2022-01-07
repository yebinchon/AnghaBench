
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* stop_script ) () ;} ;


 int pr_debug (char*) ;
 TYPE_1__* scripting_ops ;
 int stub1 () ;

__attribute__((used)) static int cleanup_scripting(void)
{
 pr_debug("\nperf script stopped\n");

 return scripting_ops ? scripting_ops->stop_script() : 0;
}
