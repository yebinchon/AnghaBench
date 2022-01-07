
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pppoatm_vcc {int wakeup_tasklet; int blocked; int inflight; int (* old_pop ) (struct atm_vcc*,struct sk_buff*) ;} ;
struct atm_vcc {int dummy; } ;


 int BLOCKED ;
 struct pppoatm_vcc* atmvcc_to_pvcc (struct atm_vcc*) ;
 int atomic_dec (int *) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void pppoatm_pop(struct atm_vcc *atmvcc, struct sk_buff *skb)
{
 struct pppoatm_vcc *pvcc = atmvcc_to_pvcc(atmvcc);

 pvcc->old_pop(atmvcc, skb);
 atomic_dec(&pvcc->inflight);
 if (test_and_clear_bit(BLOCKED, &pvcc->blocked))
  tasklet_schedule(&pvcc->wakeup_tasklet);
}
