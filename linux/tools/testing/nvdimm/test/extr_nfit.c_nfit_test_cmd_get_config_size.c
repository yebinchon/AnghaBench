
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_cmd_get_config_size {int max_xfer; int config_size; scalar_t__ status; } ;


 int EINVAL ;
 int LABEL_SIZE ;
 int SZ_4K ;

__attribute__((used)) static int nfit_test_cmd_get_config_size(struct nd_cmd_get_config_size *nd_cmd,
  unsigned int buf_len)
{
 if (buf_len < sizeof(*nd_cmd))
  return -EINVAL;

 nd_cmd->status = 0;
 nd_cmd->config_size = LABEL_SIZE;
 nd_cmd->max_xfer = SZ_4K;

 return 0;
}
