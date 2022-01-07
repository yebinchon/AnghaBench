
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_hsw {scalar_t__ param_buf; scalar_t__ param_idx_r; scalar_t__ param_idx_w; } ;


 int memset (void*,int ,int) ;

void sst_hsw_reset_param_buf(struct sst_hsw *hsw)
{
 hsw->param_idx_w = 0;
 hsw->param_idx_r = 0;
 memset((void *)hsw->param_buf, 0, sizeof(hsw->param_buf));
}
