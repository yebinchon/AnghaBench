
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {int rev; int boot_work; int * ops; scalar_t__ base; int regmap; } ;


 scalar_t__ ADSP2_CONTROL ;
 int ADSP2_MEM_ENA ;
 int INIT_WORK (int *,int ) ;
 int adsp_err (struct wm_adsp*,char*,int) ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;
 int * wm_adsp2_ops ;
 int wm_adsp_boot_work ;
 int wm_adsp_common_init (struct wm_adsp*) ;

int wm_adsp2_init(struct wm_adsp *dsp)
{
 int ret;

 ret = wm_adsp_common_init(dsp);
 if (ret)
  return ret;

 switch (dsp->rev) {
 case 0:




  ret = regmap_update_bits(dsp->regmap, dsp->base + ADSP2_CONTROL,
      ADSP2_MEM_ENA, 0);
  if (ret) {
   adsp_err(dsp,
     "Failed to clear memory retention: %d\n", ret);
   return ret;
  }

  dsp->ops = &wm_adsp2_ops[0];
  break;
 case 1:
  dsp->ops = &wm_adsp2_ops[1];
  break;
 default:
  dsp->ops = &wm_adsp2_ops[2];
  break;
 }

 INIT_WORK(&dsp->boot_work, wm_adsp_boot_work);

 return 0;
}
