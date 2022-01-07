
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fw_unit {int device; } ;
struct fcp_transaction {unsigned int response_size; unsigned int response_match_bytes; scalar_t__ state; int deferrable; int list; struct fw_unit* unit; int wait; void* response_buffer; } ;


 scalar_t__ CSR_FCP_COMMAND ;
 scalar_t__ CSR_REGISTER_BASE ;
 int EIO ;
 int ERROR_DELAY_MS ;
 int ERROR_RETRIES ;
 int FCP_TIMEOUT_MS ;
 scalar_t__ STATE_BUS_RESET ;
 scalar_t__ STATE_COMPLETE ;
 scalar_t__ STATE_DEFERRED ;
 scalar_t__ STATE_PENDING ;
 int TCODE_WRITE_BLOCK_REQUEST ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int dev_err (int *,char*) ;
 int init_waitqueue_head (int *) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int msecs_to_jiffies (int ) ;
 int msleep (int ) ;
 int snd_fw_transaction (struct fw_unit*,int,scalar_t__,void*,unsigned int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int transactions ;
 int transactions_lock ;
 int wait_event_timeout (int ,int,int ) ;

int fcp_avc_transaction(struct fw_unit *unit,
   const void *command, unsigned int command_size,
   void *response, unsigned int response_size,
   unsigned int response_match_bytes)
{
 struct fcp_transaction t;
 int tcode, ret, tries = 0;

 t.unit = unit;
 t.response_buffer = response;
 t.response_size = response_size;
 t.response_match_bytes = response_match_bytes;
 t.state = STATE_PENDING;
 init_waitqueue_head(&t.wait);

 if (*(const u8 *)command == 0x00 || *(const u8 *)command == 0x03)
  t.deferrable = 1;

 spin_lock_irq(&transactions_lock);
 list_add_tail(&t.list, &transactions);
 spin_unlock_irq(&transactions_lock);

 for (;;) {
  tcode = command_size == 4 ? TCODE_WRITE_QUADLET_REQUEST
       : TCODE_WRITE_BLOCK_REQUEST;
  ret = snd_fw_transaction(t.unit, tcode,
      CSR_REGISTER_BASE + CSR_FCP_COMMAND,
      (void *)command, command_size, 0);
  if (ret < 0)
   break;
deferred:
  wait_event_timeout(t.wait, t.state != STATE_PENDING,
       msecs_to_jiffies(FCP_TIMEOUT_MS));

  if (t.state == STATE_DEFERRED) {







   t.state = STATE_PENDING;
   goto deferred;
  } else if (t.state == STATE_COMPLETE) {
   ret = t.response_size;
   break;
  } else if (t.state == STATE_BUS_RESET) {
   msleep(ERROR_DELAY_MS);
  } else if (++tries >= ERROR_RETRIES) {
   dev_err(&t.unit->device, "FCP command timed out\n");
   ret = -EIO;
   break;
  }
 }

 spin_lock_irq(&transactions_lock);
 list_del(&t.list);
 spin_unlock_irq(&transactions_lock);

 return ret;
}
