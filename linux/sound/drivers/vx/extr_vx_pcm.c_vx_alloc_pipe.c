
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_rmh {int * Cmd; } ;
struct vx_pipe {int number; int is_capture; int channels; int data_mode; scalar_t__ pcx_time; scalar_t__ differed_type; } ;
struct vx_core {int uer_bits; } ;


 int BIT_DATA_MODE ;
 int BIT_SKIP_SOUND ;
 int CMD_FREE_PIPE ;
 int CMD_RES_PIPE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IEC958_AES0_NONAUDIO ;
 struct vx_pipe* kzalloc (int,int ) ;
 scalar_t__ underrun_skip_sound ;
 int vx_init_rmh (struct vx_rmh*,int ) ;
 int vx_send_msg (struct vx_core*,struct vx_rmh*) ;
 int vx_set_pipe_cmd_params (struct vx_rmh*,int,int,int) ;

__attribute__((used)) static int vx_alloc_pipe(struct vx_core *chip, int capture,
    int audioid, int num_audio,
    struct vx_pipe **pipep)
{
 int err;
 struct vx_pipe *pipe;
 struct vx_rmh rmh;
 int data_mode;

 *pipep = ((void*)0);
 vx_init_rmh(&rmh, CMD_RES_PIPE);
 vx_set_pipe_cmd_params(&rmh, capture, audioid, num_audio);




 data_mode = (chip->uer_bits & IEC958_AES0_NONAUDIO) != 0;
 if (! capture && data_mode)
  rmh.Cmd[0] |= BIT_DATA_MODE;
 err = vx_send_msg(chip, &rmh);
 if (err < 0)
  return err;


 pipe = kzalloc(sizeof(*pipe), GFP_KERNEL);
 if (! pipe) {

  vx_init_rmh(&rmh, CMD_FREE_PIPE);
  vx_set_pipe_cmd_params(&rmh, capture, audioid, 0);
  vx_send_msg(chip, &rmh);
  return -ENOMEM;
 }


 pipe->number = audioid;
 pipe->is_capture = capture;
 pipe->channels = num_audio;
 pipe->differed_type = 0;
 pipe->pcx_time = 0;
 pipe->data_mode = data_mode;
 *pipep = pipe;

 return 0;
}
