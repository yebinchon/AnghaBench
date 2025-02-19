
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int* cmd; } ;
struct lx6464es {int msg_lock; TYPE_1__ rmh; } ;
typedef enum stream_state_t { ____Placeholder_stream_state_t } stream_state_t ;


 int CMD_13_SET_STREAM_STATE ;
 int PIPE_INFO_TO_CMD (int,int) ;
 int lx_message_init (TYPE_1__*,int ) ;
 int lx_message_send_atomic (struct lx6464es*,TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int lx_stream_set_state(struct lx6464es *chip, u32 pipe,
          int is_capture, enum stream_state_t state)
{
 int err;
 u32 pipe_cmd = PIPE_INFO_TO_CMD(is_capture, pipe);

 mutex_lock(&chip->msg_lock);
 lx_message_init(&chip->rmh, CMD_13_SET_STREAM_STATE);

 chip->rmh.cmd[0] |= pipe_cmd;
 chip->rmh.cmd[0] |= state;

 err = lx_message_send_atomic(chip, &chip->rmh);
 mutex_unlock(&chip->msg_lock);

 return err;
}
