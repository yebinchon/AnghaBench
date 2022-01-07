
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int* stat; int * cmd; } ;
struct lx6464es {int msg_lock; TYPE_2__ rmh; TYPE_1__* card; } ;
struct TYPE_4__ {int dev; } ;


 int CMD_0A_GET_PIPE_SPL_COUNT ;
 int PIPE_INFO_TO_CMD (int,int ) ;
 int PSTATE_OFFSET ;
 int dev_err (int ,char*) ;
 int lx_message_init (TYPE_2__*,int ) ;
 int lx_message_send_atomic (struct lx6464es*,TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int lx_pipe_state(struct lx6464es *chip, u32 pipe, int is_capture, u16 *rstate)
{
 int err;
 u32 pipe_cmd = PIPE_INFO_TO_CMD(is_capture, pipe);

 mutex_lock(&chip->msg_lock);
 lx_message_init(&chip->rmh, CMD_0A_GET_PIPE_SPL_COUNT);

 chip->rmh.cmd[0] |= pipe_cmd;

 err = lx_message_send_atomic(chip, &chip->rmh);

 if (err != 0)
  dev_err(chip->card->dev, "could not query pipe's state\n");
 else
  *rstate = (chip->rmh.stat[0] >> PSTATE_OFFSET) & 0x0F;

 mutex_unlock(&chip->msg_lock);
 return err;
}
