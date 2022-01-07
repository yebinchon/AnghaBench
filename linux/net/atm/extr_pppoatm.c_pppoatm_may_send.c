
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppoatm_vcc {int inflight; int atmvcc; int blocked; } ;


 int BLOCKED ;
 scalar_t__ atm_may_send (int ,int) ;
 scalar_t__ atomic_inc_not_zero (int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int pppoatm_may_send(struct pppoatm_vcc *pvcc, int size)
{







 if (atm_may_send(pvcc->atmvcc, size) &&
     atomic_inc_not_zero(&pvcc->inflight))
  return 1;
 test_and_set_bit(BLOCKED, &pvcc->blocked);
 if (atm_may_send(pvcc->atmvcc, size) &&
     atomic_inc_not_zero(&pvcc->inflight))
  return 1;

 return 0;
}
