
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* flush_script ) () ;} ;


 TYPE_1__* scripting_ops ;
 int stub1 () ;

__attribute__((used)) static int flush_scripting(void)
{
 return scripting_ops ? scripting_ops->flush_script() : 0;
}
