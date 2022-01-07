
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skl_pipe {int conn_type; int pipe_priority; int memory_pages; int lp_mode; int direction; int nr_cfgs; } ;
struct device {int dummy; } ;


 int EINVAL ;






 int dev_err (struct device*,char*,int) ;

__attribute__((used)) static int skl_tplg_fill_pipe_tkn(struct device *dev,
   struct skl_pipe *pipe, u32 tkn,
   u32 tkn_val)
{

 switch (tkn) {
 case 132:
  pipe->conn_type = tkn_val;
  break;

 case 129:
  pipe->pipe_priority = tkn_val;
  break;

 case 130:
  pipe->memory_pages = tkn_val;
  break;

 case 128:
  pipe->lp_mode = tkn_val;
  break;

 case 131:
  pipe->direction = tkn_val;
  break;

 case 133:
  pipe->nr_cfgs = tkn_val;
  break;

 default:
  dev_err(dev, "Token not handled %d\n", tkn);
  return -EINVAL;
 }

 return 0;
}
