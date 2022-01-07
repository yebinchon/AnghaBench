
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sst_hsw {int param_idx_w; int * param_buf; int dev; } ;


 int EPERM ;
 int WAVES_PARAM_COUNT ;
 int WAVES_PARAM_LINES ;
 int dev_warn (int ,char*) ;
 int memcpy (int ,int *,int ) ;

int sst_hsw_store_param_line(struct sst_hsw *hsw, u8 *buf)
{

 if (hsw->param_idx_w > WAVES_PARAM_LINES - 1) {
  dev_warn(hsw->dev, "warning: param buffer overflow!\n");
  return -EPERM;
 }
 memcpy(hsw->param_buf[hsw->param_idx_w], buf, WAVES_PARAM_COUNT);
 hsw->param_idx_w++;
 return 0;
}
