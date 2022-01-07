
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long offset; } ;
struct snd_motu {int hwdep_wait; int lock; int msg; TYPE_1__ async_handler; } ;
struct fw_request {int dummy; } ;
struct fw_card {int dummy; } ;
typedef int __be32 ;


 int RCODE_ADDRESS_ERROR ;
 int RCODE_COMPLETE ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int be32_to_cpu (int ) ;
 int fw_send_response (struct fw_card*,struct fw_request*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void handle_message(struct fw_card *card, struct fw_request *request,
      int tcode, int destination, int source,
      int generation, unsigned long long offset,
      void *data, size_t length, void *callback_data)
{
 struct snd_motu *motu = callback_data;
 __be32 *buf = (__be32 *)data;
 unsigned long flags;

 if (tcode != TCODE_WRITE_QUADLET_REQUEST) {
  fw_send_response(card, request, RCODE_COMPLETE);
  return;
 }

 if (offset != motu->async_handler.offset || length != 4) {
  fw_send_response(card, request, RCODE_ADDRESS_ERROR);
  return;
 }

 spin_lock_irqsave(&motu->lock, flags);
 motu->msg = be32_to_cpu(*buf);
 spin_unlock_irqrestore(&motu->lock, flags);

 fw_send_response(card, request, RCODE_COMPLETE);

 wake_up(&motu->hwdep_wait);
}
