
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {scalar_t__ base; int regmap; } ;


 int adsp_err (struct wm_adsp*,char*,unsigned int,int) ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;

__attribute__((used)) static void wm_adsp_read_fw_status(struct wm_adsp *dsp,
       int noffs, unsigned int *offs)
{
 unsigned int i;
 int ret;

 for (i = 0; i < noffs; ++i) {
  ret = regmap_read(dsp->regmap, dsp->base + offs[i], &offs[i]);
  if (ret) {
   adsp_err(dsp, "Failed to read SCRATCH%u: %d\n", i, ret);
   return;
  }
 }
}
