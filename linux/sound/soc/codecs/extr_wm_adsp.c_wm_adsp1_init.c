
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {int * ops; } ;


 int wm_adsp1_ops ;
 int wm_adsp_common_init (struct wm_adsp*) ;

int wm_adsp1_init(struct wm_adsp *dsp)
{
 dsp->ops = &wm_adsp1_ops;

 return wm_adsp_common_init(dsp);
}
