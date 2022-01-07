
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sst_hsw {int param_idx_r; scalar_t__** param_buf; int dev; } ;


 int WAVES_PARAM_COUNT ;
 int WAVES_PARAM_LINES ;
 int dev_dbg (int ,char*) ;
 int memcpy (scalar_t__*,scalar_t__*,int ) ;

int sst_hsw_load_param_line(struct sst_hsw *hsw, u8 *buf)
{
 u8 id = 0;


 while (hsw->param_idx_r < WAVES_PARAM_LINES) {
  id = hsw->param_buf[hsw->param_idx_r][0];
  hsw->param_idx_r++;
  if (buf[0] == id) {
   memcpy(buf, hsw->param_buf[hsw->param_idx_r],
    WAVES_PARAM_COUNT);
   break;
  }
 }
 if (hsw->param_idx_r > WAVES_PARAM_LINES - 1) {
  dev_dbg(hsw->dev, "end of buffer, roll to the beginning\n");
  hsw->param_idx_r = 0;
  return 0;
 }
 return 0;
}
