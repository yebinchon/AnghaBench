
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int* cmd; int* stat; int stat_len; } ;
struct lx6464es {int msg_lock; TYPE_2__ rmh; TYPE_1__* card; } ;
struct TYPE_4__ {int dev; } ;


 int BF_EOB ;
 int BF_VALID ;
 int BUFF_FLAGS_OFFSET ;
 int CMD_08_ASK_BUFFERS ;
 int MASK_DATA_SIZE ;
 int MAX_STREAM_BUFFER ;
 int PIPE_INFO_TO_CMD (int,int) ;
 int dev_dbg (int ,char*,int,int,...) ;
 int lx_message_init (TYPE_2__*,int ) ;
 int lx_message_send_atomic (struct lx6464es*,TYPE_2__*) ;
 int memset (int*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int lx_buffer_ask(struct lx6464es *chip, u32 pipe, int is_capture,
    u32 *r_needed, u32 *r_freed, u32 *size_array)
{
 int err;
 u32 pipe_cmd = PIPE_INFO_TO_CMD(is_capture, pipe);






 *r_needed = 0;
 *r_freed = 0;

 mutex_lock(&chip->msg_lock);
 lx_message_init(&chip->rmh, CMD_08_ASK_BUFFERS);

 chip->rmh.cmd[0] |= pipe_cmd;

 err = lx_message_send_atomic(chip, &chip->rmh);

 if (!err) {
  int i;
  for (i = 0; i < MAX_STREAM_BUFFER; ++i) {
   u32 stat = chip->rmh.stat[i];
   if (stat & (BF_EOB << BUFF_FLAGS_OFFSET)) {

    *r_freed += 1;
    if (size_array)
     size_array[i] = stat & MASK_DATA_SIZE;
   } else if ((stat & (BF_VALID << BUFF_FLAGS_OFFSET))
       == 0)

    *r_needed += 1;
  }

  dev_dbg(chip->card->dev,
   "CMD_08_ASK_BUFFERS: needed %d, freed %d\n",
       *r_needed, *r_freed);
  for (i = 0; i < MAX_STREAM_BUFFER; ++i) {
   for (i = 0; i != chip->rmh.stat_len; ++i)
    dev_dbg(chip->card->dev,
     "  stat[%d]: %x, %x\n", i,
         chip->rmh.stat[i],
         chip->rmh.stat[i] & MASK_DATA_SIZE);
  }
 }

 mutex_unlock(&chip->msg_lock);
 return err;
}
