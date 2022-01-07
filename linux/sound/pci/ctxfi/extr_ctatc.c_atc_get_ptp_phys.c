
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ct_atc {TYPE_1__* vm; } ;
struct TYPE_2__ {unsigned long (* get_ptp_phys ) (TYPE_1__*,int) ;} ;


 unsigned long stub1 (TYPE_1__*,int) ;

__attribute__((used)) static unsigned long atc_get_ptp_phys(struct ct_atc *atc, int index)
{
 return atc->vm->get_ptp_phys(atc->vm, index);
}
