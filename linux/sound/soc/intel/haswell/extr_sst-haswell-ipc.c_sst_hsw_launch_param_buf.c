
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_hsw {int param_idx_w; int ** param_buf; int dev; } ;


 int SST_HSW_MODULE_WAVES ;
 int WAVES_PARAM_COUNT ;
 int dev_dbg (int ,char*) ;
 int sst_hsw_is_module_active (struct sst_hsw*,int ) ;
 int sst_hsw_module_set_param (struct sst_hsw*,int ,int ,int ,int ,int *) ;

int sst_hsw_launch_param_buf(struct sst_hsw *hsw)
{
 int ret, idx;

 if (!sst_hsw_is_module_active(hsw, SST_HSW_MODULE_WAVES)) {
  dev_dbg(hsw->dev, "module waves is not active\n");
  return 0;
 }


 for (idx = 0; idx < hsw->param_idx_w; idx++) {
  ret = sst_hsw_module_set_param(hsw,
   SST_HSW_MODULE_WAVES, 0, hsw->param_buf[idx][0],
   WAVES_PARAM_COUNT, hsw->param_buf[idx]);
  if (ret < 0)
   return ret;
 }
 return 0;
}
