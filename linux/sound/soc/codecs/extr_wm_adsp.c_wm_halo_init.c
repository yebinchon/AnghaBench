
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {int boot_work; int * ops; } ;


 int INIT_WORK (int *,int ) ;
 int wm_adsp_boot_work ;
 int wm_adsp_common_init (struct wm_adsp*) ;
 int wm_halo_ops ;

int wm_halo_init(struct wm_adsp *dsp)
{
 int ret;

 ret = wm_adsp_common_init(dsp);
 if (ret)
  return ret;

 dsp->ops = &wm_halo_ops;

 INIT_WORK(&dsp->boot_work, wm_adsp_boot_work);

 return 0;
}
