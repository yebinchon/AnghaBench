
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppoatm_vcc {int (* old_release_cb ) (struct atm_vcc*) ;int wakeup_tasklet; int blocked; } ;
struct atm_vcc {int dummy; } ;


 int BLOCKED ;
 struct pppoatm_vcc* atmvcc_to_pvcc (struct atm_vcc*) ;
 int stub1 (struct atm_vcc*) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void pppoatm_release_cb(struct atm_vcc *atmvcc)
{
 struct pppoatm_vcc *pvcc = atmvcc_to_pvcc(atmvcc);
 if (test_and_clear_bit(BLOCKED, &pvcc->blocked))
  tasklet_schedule(&pvcc->wakeup_tasklet);
 if (pvcc->old_release_cb)
  pvcc->old_release_cb(atmvcc);
}
