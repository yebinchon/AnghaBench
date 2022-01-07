
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* pre_snapshot ) () ;} ;


 TYPE_1__* hibernation_ops ;
 int stub1 () ;

__attribute__((used)) static int platform_pre_snapshot(int platform_mode)
{
 return (platform_mode && hibernation_ops) ?
  hibernation_ops->pre_snapshot() : 0;
}
