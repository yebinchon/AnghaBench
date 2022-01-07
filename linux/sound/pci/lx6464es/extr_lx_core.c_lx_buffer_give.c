
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int* cmd; int cmd_len; int* stat; } ;
struct lx6464es {int msg_lock; TYPE_1__* card; TYPE_2__ rmh; } ;
struct TYPE_4__ {int dev; } ;


 int BF_64BITS_ADR ;
 int BF_NOTIFY_EOB ;
 int CMD_0F_UPDATE_BUFFER ;
 int EB_CMD_REFUSED ;
 int EB_INVALID_STREAM ;
 int EB_RBUFFERS_TABLE_OVERFLOW ;
 int MASK_DATA_SIZE ;
 int PIPE_INFO_TO_CMD (int,int) ;
 int dev_err (int ,char*) ;
 int lx_message_init (TYPE_2__*,int ) ;
 int lx_message_send_atomic (struct lx6464es*,TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int lx_buffer_give(struct lx6464es *chip, u32 pipe, int is_capture,
     u32 buffer_size, u32 buf_address_lo, u32 buf_address_hi,
     u32 *r_buffer_index)
{
 int err;
 u32 pipe_cmd = PIPE_INFO_TO_CMD(is_capture, pipe);

 mutex_lock(&chip->msg_lock);
 lx_message_init(&chip->rmh, CMD_0F_UPDATE_BUFFER);

 chip->rmh.cmd[0] |= pipe_cmd;
 chip->rmh.cmd[0] |= BF_NOTIFY_EOB;



 chip->rmh.cmd[1] = buffer_size & MASK_DATA_SIZE;
 chip->rmh.cmd[2] = buf_address_lo;

 if (buf_address_hi) {
  chip->rmh.cmd_len = 4;
  chip->rmh.cmd[3] = buf_address_hi;
  chip->rmh.cmd[0] |= BF_64BITS_ADR;
 }

 err = lx_message_send_atomic(chip, &chip->rmh);

 if (err == 0) {
  *r_buffer_index = chip->rmh.stat[0];
  goto done;
 }

 if (err == EB_RBUFFERS_TABLE_OVERFLOW)
  dev_err(chip->card->dev,
   "lx_buffer_give EB_RBUFFERS_TABLE_OVERFLOW\n");

 if (err == EB_INVALID_STREAM)
  dev_err(chip->card->dev,
   "lx_buffer_give EB_INVALID_STREAM\n");

 if (err == EB_CMD_REFUSED)
  dev_err(chip->card->dev,
   "lx_buffer_give EB_CMD_REFUSED\n");

 done:
 mutex_unlock(&chip->msg_lock);
 return err;
}
