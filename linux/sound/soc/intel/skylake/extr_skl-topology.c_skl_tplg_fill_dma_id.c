
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skl_pipe_params {int format; int stream; int s_freq; int ch; int s_fmt; int host_bps; int host_dma_id; int link_bps; int link_index; int link_dma_id; } ;
struct skl_pipe {TYPE_1__* p_params; scalar_t__ passthru; } ;
struct skl_module_cfg {int dev_type; struct skl_pipe* pipe; } ;
struct TYPE_2__ {int format; int stream; int s_freq; int ch; int s_fmt; int host_bps; int host_dma_id; int link_bps; int link_index; int link_dma_id; } ;




 int memcpy (TYPE_1__*,struct skl_pipe_params*,int) ;

__attribute__((used)) static void skl_tplg_fill_dma_id(struct skl_module_cfg *mcfg,
    struct skl_pipe_params *params)
{
 struct skl_pipe *pipe = mcfg->pipe;

 if (pipe->passthru) {
  switch (mcfg->dev_type) {
  case 128:
   pipe->p_params->link_dma_id = params->link_dma_id;
   pipe->p_params->link_index = params->link_index;
   pipe->p_params->link_bps = params->link_bps;
   break;

  case 129:
   pipe->p_params->host_dma_id = params->host_dma_id;
   pipe->p_params->host_bps = params->host_bps;
   break;

  default:
   break;
  }
  pipe->p_params->s_fmt = params->s_fmt;
  pipe->p_params->ch = params->ch;
  pipe->p_params->s_freq = params->s_freq;
  pipe->p_params->stream = params->stream;
  pipe->p_params->format = params->format;

 } else {
  memcpy(pipe->p_params, params, sizeof(*params));
 }
}
