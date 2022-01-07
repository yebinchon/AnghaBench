
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int extendables; } ;


 int RCUTORTURE_MAX_EXTEND ;
 int RCUTORTURE_RDR_RCU ;
 int WARN_ON_ONCE (int) ;
 TYPE_1__* cur_ops ;
 int extendables ;

__attribute__((used)) static int rcutorture_extend_mask_max(void)
{
 int mask;

 WARN_ON_ONCE(extendables & ~RCUTORTURE_MAX_EXTEND);
 mask = extendables & RCUTORTURE_MAX_EXTEND & cur_ops->extendables;
 mask = mask | RCUTORTURE_RDR_RCU;
 return mask;
}
