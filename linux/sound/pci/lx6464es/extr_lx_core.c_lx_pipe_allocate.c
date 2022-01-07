
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int* cmd; } ;
struct lx6464es {TYPE_1__* card; int msg_lock; TYPE_2__ rmh; } ;
struct TYPE_4__ {int dev; } ;


 int CMD_06_ALLOCATE_PIPE ;
 int PIPE_INFO_TO_CMD (int,int) ;
 int dev_err (int ,char*) ;
 int lx_message_init (TYPE_2__*,int ) ;
 int lx_message_send_atomic (struct lx6464es*,TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int lx_pipe_allocate(struct lx6464es *chip, u32 pipe, int is_capture,
       int channels)
{
 int err;
 u32 pipe_cmd = PIPE_INFO_TO_CMD(is_capture, pipe);

 mutex_lock(&chip->msg_lock);
 lx_message_init(&chip->rmh, CMD_06_ALLOCATE_PIPE);

 chip->rmh.cmd[0] |= pipe_cmd;
 chip->rmh.cmd[0] |= channels;

 err = lx_message_send_atomic(chip, &chip->rmh);
 mutex_unlock(&chip->msg_lock);

 if (err != 0)
  dev_err(chip->card->dev, "could not allocate pipe\n");

 return err;
}
