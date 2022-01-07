
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_dice {int notification_bits; int hwdep_wait; int clock_accepted; int lock; } ;
struct fw_request {int dummy; } ;
struct fw_card {int dummy; } ;


 int NOTIFY_LOCK_CHG ;
 int RCODE_ADDRESS_ERROR ;
 int RCODE_COMPLETE ;
 int RCODE_TYPE_ERROR ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int be32_to_cpup (void*) ;
 int complete (int *) ;
 int fw_send_response (struct fw_card*,struct fw_request*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void dice_notification(struct fw_card *card, struct fw_request *request,
         int tcode, int destination, int source,
         int generation, unsigned long long offset,
         void *data, size_t length, void *callback_data)
{
 struct snd_dice *dice = callback_data;
 u32 bits;
 unsigned long flags;

 if (tcode != TCODE_WRITE_QUADLET_REQUEST) {
  fw_send_response(card, request, RCODE_TYPE_ERROR);
  return;
 }
 if ((offset & 3) != 0) {
  fw_send_response(card, request, RCODE_ADDRESS_ERROR);
  return;
 }

 bits = be32_to_cpup(data);

 spin_lock_irqsave(&dice->lock, flags);
 dice->notification_bits |= bits;
 spin_unlock_irqrestore(&dice->lock, flags);

 fw_send_response(card, request, RCODE_COMPLETE);

 if (bits & NOTIFY_LOCK_CHG)
  complete(&dice->clock_accepted);
 wake_up(&dice->hwdep_wait);
}
