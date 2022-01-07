
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skl_pipe_fmt {int freq; int channels; int bps; } ;
struct skl_pipe {struct skl_path_config* configs; } ;
struct skl_path_config {int mem_pages; struct skl_pipe_fmt out_fmt; struct skl_pipe_fmt in_fmt; } ;
struct device {int dummy; } ;


 int EINVAL ;






 int dev_err (struct device*,char*,int) ;

__attribute__((used)) static int skl_tplg_fill_pipe_cfg(struct device *dev,
   struct skl_pipe *pipe, u32 tkn,
   u32 tkn_val, int conf_idx, int dir)
{
 struct skl_pipe_fmt *fmt;
 struct skl_path_config *config;

 switch (dir) {
 case 133:
  fmt = &pipe->configs[conf_idx].in_fmt;
  break;

 case 132:
  fmt = &pipe->configs[conf_idx].out_fmt;
  break;

 default:
  dev_err(dev, "Invalid direction: %d\n", dir);
  return -EINVAL;
 }

 config = &pipe->configs[conf_idx];

 switch (tkn) {
 case 131:
  fmt->freq = tkn_val;
  break;

 case 128:
  fmt->channels = tkn_val;
  break;

 case 129:
  fmt->bps = tkn_val;
  break;

 case 130:
  config->mem_pages = tkn_val;
  break;

 default:
  dev_err(dev, "Invalid token config: %d\n", tkn);
  return -EINVAL;
 }

 return 0;
}
