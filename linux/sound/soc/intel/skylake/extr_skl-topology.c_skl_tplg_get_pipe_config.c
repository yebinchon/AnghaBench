
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_pipe_params {int s_fmt; int s_freq; int ch; } ;
struct skl_pipe_fmt {int bps; int freq; int channels; } ;
struct skl_pipe {int nr_cfgs; int cur_config_idx; scalar_t__ conn_type; scalar_t__ direction; int ppl_id; int memory_pages; struct skl_path_config* configs; struct skl_pipe_params* p_params; } ;
struct skl_path_config {int mem_pages; struct skl_pipe_fmt out_fmt; struct skl_pipe_fmt in_fmt; } ;
struct skl_module_cfg {struct skl_pipe* pipe; } ;
struct skl_dev {int dev; } ;


 scalar_t__ CHECK_HW_PARAMS (int ,int ,int ,int ,int ,int ) ;
 int EINVAL ;
 scalar_t__ SKL_PIPE_CONN_TYPE_BE ;
 scalar_t__ SKL_PIPE_CONN_TYPE_FE ;
 scalar_t__ SKL_PIPE_CONN_TYPE_NONE ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int
skl_tplg_get_pipe_config(struct skl_dev *skl, struct skl_module_cfg *mconfig)
{
 struct skl_pipe *pipe = mconfig->pipe;
 struct skl_pipe_params *params = pipe->p_params;
 struct skl_path_config *pconfig = &pipe->configs[0];
 struct skl_pipe_fmt *fmt = ((void*)0);
 bool in_fmt = 0;
 int i;

 if (pipe->nr_cfgs == 0) {
  pipe->cur_config_idx = 0;
  return 0;
 }

 if (pipe->conn_type == SKL_PIPE_CONN_TYPE_NONE) {
  dev_dbg(skl->dev, "No conn_type detected, take 0th config\n");
  pipe->cur_config_idx = 0;
  pipe->memory_pages = pconfig->mem_pages;

  return 0;
 }

 if ((pipe->conn_type == SKL_PIPE_CONN_TYPE_FE &&
      pipe->direction == SNDRV_PCM_STREAM_PLAYBACK) ||
      (pipe->conn_type == SKL_PIPE_CONN_TYPE_BE &&
      pipe->direction == SNDRV_PCM_STREAM_CAPTURE))
  in_fmt = 1;

 for (i = 0; i < pipe->nr_cfgs; i++) {
  pconfig = &pipe->configs[i];
  if (in_fmt)
   fmt = &pconfig->in_fmt;
  else
   fmt = &pconfig->out_fmt;

  if (CHECK_HW_PARAMS(params->ch, params->s_freq, params->s_fmt,
        fmt->channels, fmt->freq, fmt->bps)) {
   pipe->cur_config_idx = i;
   pipe->memory_pages = pconfig->mem_pages;
   dev_dbg(skl->dev, "Using pipe config: %d\n", i);

   return 0;
  }
 }

 dev_err(skl->dev, "Invalid pipe config: %d %d %d for pipe: %d\n",
  params->ch, params->s_freq, params->s_fmt, pipe->ppl_id);
 return -EINVAL;
}
