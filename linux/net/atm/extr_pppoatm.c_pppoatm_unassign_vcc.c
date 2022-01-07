
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppoatm_vcc {int chan; int wakeup_tasklet; int old_release_cb; int old_pop; int old_push; } ;
struct atm_vcc {int * user_back; int release_cb; int pop; int push; } ;


 struct pppoatm_vcc* atmvcc_to_pvcc (struct atm_vcc*) ;
 int kfree (struct pppoatm_vcc*) ;
 int ppp_unregister_channel (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void pppoatm_unassign_vcc(struct atm_vcc *atmvcc)
{
 struct pppoatm_vcc *pvcc;
 pvcc = atmvcc_to_pvcc(atmvcc);
 atmvcc->push = pvcc->old_push;
 atmvcc->pop = pvcc->old_pop;
 atmvcc->release_cb = pvcc->old_release_cb;
 tasklet_kill(&pvcc->wakeup_tasklet);
 ppp_unregister_channel(&pvcc->chan);
 atmvcc->user_back = ((void*)0);
 kfree(pvcc);
}
