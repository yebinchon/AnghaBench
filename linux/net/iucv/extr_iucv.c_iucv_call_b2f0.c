
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iprcode; } ;
union iucv_param {TYPE_1__ ctrl; } ;


 int __iucv_call_b2f0 (int,union iucv_param*) ;

__attribute__((used)) static inline int iucv_call_b2f0(int command, union iucv_param *parm)
{
 int ccode;

 ccode = __iucv_call_b2f0(command, parm);
 return ccode == 1 ? parm->ctrl.iprcode : ccode;
}
