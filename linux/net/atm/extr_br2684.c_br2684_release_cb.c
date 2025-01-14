
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct br2684_vcc {int (* old_release_cb ) (struct atm_vcc*) ;int device; int qspace; } ;
struct atm_vcc {int dummy; } ;


 struct br2684_vcc* BR2684_VCC (struct atm_vcc*) ;
 scalar_t__ atomic_read (int *) ;
 int netif_wake_queue (int ) ;
 int stub1 (struct atm_vcc*) ;

__attribute__((used)) static void br2684_release_cb(struct atm_vcc *atmvcc)
{
 struct br2684_vcc *brvcc = BR2684_VCC(atmvcc);

 if (atomic_read(&brvcc->qspace) > 0)
  netif_wake_queue(brvcc->device);

 if (brvcc->old_release_cb)
  brvcc->old_release_cb(atmvcc);
}
