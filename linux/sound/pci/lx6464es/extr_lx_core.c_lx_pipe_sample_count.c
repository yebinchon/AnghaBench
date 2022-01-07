
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_5__ {int stat_len; int* stat; int * cmd; } ;
struct lx6464es {int msg_lock; TYPE_2__ rmh; TYPE_1__* card; } ;
struct TYPE_4__ {int dev; } ;


 int CMD_0A_GET_PIPE_SPL_COUNT ;
 int MASK_SPL_COUNT_HI ;
 int PIPE_INFO_TO_CMD (int,int ) ;
 int dev_err (int ,char*) ;
 int lx_message_init (TYPE_2__*,int ) ;
 int lx_message_send_atomic (struct lx6464es*,TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int lx_pipe_sample_count(struct lx6464es *chip, u32 pipe, int is_capture,
    u64 *rsample_count)
{
 int err;
 u32 pipe_cmd = PIPE_INFO_TO_CMD(is_capture, pipe);

 mutex_lock(&chip->msg_lock);
 lx_message_init(&chip->rmh, CMD_0A_GET_PIPE_SPL_COUNT);

 chip->rmh.cmd[0] |= pipe_cmd;
 chip->rmh.stat_len = 2;

 err = lx_message_send_atomic(chip, &chip->rmh);

 if (err != 0)
  dev_err(chip->card->dev,
   "could not query pipe's sample count\n");
 else {
  *rsample_count = ((u64)(chip->rmh.stat[0] & MASK_SPL_COUNT_HI)
      << 24)
   + chip->rmh.stat[1];
 }

 mutex_unlock(&chip->msg_lock);
 return err;
}
