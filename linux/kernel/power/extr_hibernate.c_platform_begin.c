
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* begin ) (int ) ;} ;


 int PMSG_FREEZE ;
 TYPE_1__* hibernation_ops ;
 int stub1 (int ) ;

__attribute__((used)) static int platform_begin(int platform_mode)
{
 return (platform_mode && hibernation_ops) ?
  hibernation_ops->begin(PMSG_FREEZE) : 0;
}
