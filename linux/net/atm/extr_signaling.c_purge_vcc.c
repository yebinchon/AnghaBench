
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atm_vcc {int flags; } ;
struct TYPE_2__ {scalar_t__ sk_family; } ;


 int ATM_VF_META ;
 int ATM_VF_REGIS ;
 int ATM_VF_RELEASED ;
 int EUNATCH ;
 scalar_t__ PF_ATMSVC ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 TYPE_1__* sk_atm (struct atm_vcc*) ;
 int test_bit (int ,int *) ;
 int vcc_release_async (struct atm_vcc*,int ) ;

__attribute__((used)) static void purge_vcc(struct atm_vcc *vcc)
{
 if (sk_atm(vcc)->sk_family == PF_ATMSVC &&
     !test_bit(ATM_VF_META, &vcc->flags)) {
  set_bit(ATM_VF_RELEASED, &vcc->flags);
  clear_bit(ATM_VF_REGIS, &vcc->flags);
  vcc_release_async(vcc, -EUNATCH);
 }
}
