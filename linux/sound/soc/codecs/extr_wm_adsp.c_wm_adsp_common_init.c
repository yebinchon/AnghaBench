
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {int pwr_lock; int buffer_list; int compr_list; int ctl_list; int alg_regions; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;
 int wm_adsp_create_name (struct wm_adsp*) ;

__attribute__((used)) static int wm_adsp_common_init(struct wm_adsp *dsp)
{
 int ret;

 ret = wm_adsp_create_name(dsp);
 if (ret)
  return ret;

 INIT_LIST_HEAD(&dsp->alg_regions);
 INIT_LIST_HEAD(&dsp->ctl_list);
 INIT_LIST_HEAD(&dsp->compr_list);
 INIT_LIST_HEAD(&dsp->buffer_list);

 mutex_init(&dsp->pwr_lock);

 return 0;
}
