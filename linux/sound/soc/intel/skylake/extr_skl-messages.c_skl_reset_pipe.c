
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_pipe {scalar_t__ state; } ;
struct skl_dev {int dev; } ;


 int PPL_RESET ;
 scalar_t__ SKL_PIPE_PAUSED ;
 scalar_t__ SKL_PIPE_RESET ;
 int dev_dbg (int ,char*,int) ;
 int skl_set_pipe_state (struct skl_dev*,struct skl_pipe*,int ) ;

int skl_reset_pipe(struct skl_dev *skl, struct skl_pipe *pipe)
{
 int ret;


 if (pipe->state < SKL_PIPE_PAUSED)
  return 0;

 ret = skl_set_pipe_state(skl, pipe, PPL_RESET);
 if (ret < 0) {
  dev_dbg(skl->dev, "Failed to reset pipe ret=%d\n", ret);
  return ret;
 }

 pipe->state = SKL_PIPE_RESET;

 return 0;
}
