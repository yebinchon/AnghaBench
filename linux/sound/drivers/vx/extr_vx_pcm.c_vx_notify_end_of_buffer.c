
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_rmh {int dummy; } ;
struct vx_pipe {int number; } ;
struct vx_core {int dummy; } ;


 int CMD_NOTIFY_END_OF_BUFFER ;
 int IRQ_PAUSE_START_CONNECT ;
 int vx_init_rmh (struct vx_rmh*,int ) ;
 int vx_send_msg_nolock (struct vx_core*,struct vx_rmh*) ;
 int vx_send_rih_nolock (struct vx_core*,int ) ;
 int vx_set_stream_cmd_params (struct vx_rmh*,int ,int ) ;

__attribute__((used)) static int vx_notify_end_of_buffer(struct vx_core *chip, struct vx_pipe *pipe)
{
 int err;
 struct vx_rmh rmh;


 vx_send_rih_nolock(chip, IRQ_PAUSE_START_CONNECT);
 vx_init_rmh(&rmh, CMD_NOTIFY_END_OF_BUFFER);
 vx_set_stream_cmd_params(&rmh, 0, pipe->number);
 err = vx_send_msg_nolock(chip, &rmh);
 if (err < 0)
  return err;

 vx_send_rih_nolock(chip, IRQ_PAUSE_START_CONNECT);
 return 0;
}
