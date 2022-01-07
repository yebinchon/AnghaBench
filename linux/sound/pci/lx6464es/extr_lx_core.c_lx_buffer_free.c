
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int* cmd; int* stat; } ;
struct lx6464es {int msg_lock; TYPE_1__ rmh; } ;


 int CMD_11_CANCEL_BUFFER ;
 int MASK_BUFFER_ID ;
 int MASK_DATA_SIZE ;
 int PIPE_INFO_TO_CMD (int,int) ;
 int lx_message_init (TYPE_1__*,int ) ;
 int lx_message_send_atomic (struct lx6464es*,TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int lx_buffer_free(struct lx6464es *chip, u32 pipe, int is_capture,
     u32 *r_buffer_size)
{
 int err;
 u32 pipe_cmd = PIPE_INFO_TO_CMD(is_capture, pipe);

 mutex_lock(&chip->msg_lock);
 lx_message_init(&chip->rmh, CMD_11_CANCEL_BUFFER);

 chip->rmh.cmd[0] |= pipe_cmd;
 chip->rmh.cmd[0] |= MASK_BUFFER_ID;


 err = lx_message_send_atomic(chip, &chip->rmh);

 if (err == 0)
  *r_buffer_size = chip->rmh.stat[0] & MASK_DATA_SIZE;

 mutex_unlock(&chip->msg_lock);
 return err;
}
