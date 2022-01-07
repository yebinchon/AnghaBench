
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int* stat; int * cmd; } ;
struct lx6464es {int msg_lock; TYPE_1__ rmh; } ;


 int CMD_0E_GET_STREAM_SPL_COUNT ;
 int MASK_SPL_COUNT_HI ;
 int PIPE_INFO_TO_CMD (int,int ) ;
 int lx_message_init (TYPE_1__*,int ) ;
 int lx_message_send_atomic (struct lx6464es*,TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int lx_stream_sample_position(struct lx6464es *chip, u32 pipe, int is_capture,
         u64 *r_bytepos)
{
 int err;
 u32 pipe_cmd = PIPE_INFO_TO_CMD(is_capture, pipe);

 mutex_lock(&chip->msg_lock);
 lx_message_init(&chip->rmh, CMD_0E_GET_STREAM_SPL_COUNT);

 chip->rmh.cmd[0] |= pipe_cmd;

 err = lx_message_send_atomic(chip, &chip->rmh);

 *r_bytepos = ((u64) (chip->rmh.stat[0] & MASK_SPL_COUNT_HI)
        << 32)
  + chip->rmh.stat[1];

 mutex_unlock(&chip->msg_lock);
 return err;
}
