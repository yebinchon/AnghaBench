
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_pipe {int dummy; } ;
struct vx_core {int dummy; } ;


 int EBADFD ;
 int EIO ;
 int MAX_WAIT_FOR_DSP ;
 int mdelay (int) ;
 int vx_conf_pipe (struct vx_core*,struct vx_pipe*) ;
 int vx_get_pipe_state (struct vx_core*,struct vx_pipe*,int*) ;
 int vx_pipe_can_start (struct vx_core*,struct vx_pipe*) ;
 int vx_send_irqa (struct vx_core*) ;

__attribute__((used)) static int vx_toggle_pipe(struct vx_core *chip, struct vx_pipe *pipe, int state)
{
 int err, i, cur_state;


 if (vx_get_pipe_state(chip, pipe, &cur_state) < 0)
  return -EBADFD;
 if (state == cur_state)
  return 0;





 if (state) {
  for (i = 0 ; i < MAX_WAIT_FOR_DSP; i++) {
   err = vx_pipe_can_start(chip, pipe);
   if (err > 0)
    break;



   mdelay(1);
  }
 }

 if ((err = vx_conf_pipe(chip, pipe)) < 0)
  return err;

 if ((err = vx_send_irqa(chip)) < 0)
  return err;





 for (i = 0; i < MAX_WAIT_FOR_DSP; i++) {
  err = vx_get_pipe_state(chip, pipe, &cur_state);
  if (err < 0 || cur_state == state)
   break;
  err = -EIO;
  mdelay(1);
 }
 return err < 0 ? -EIO : 0;
}
