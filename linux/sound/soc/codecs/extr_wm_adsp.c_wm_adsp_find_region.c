
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp_region {int type; } ;
struct wm_adsp {int num_mems; struct wm_adsp_region const* mem; } ;



__attribute__((used)) static struct wm_adsp_region const *wm_adsp_find_region(struct wm_adsp *dsp,
       int type)
{
 int i;

 for (i = 0; i < dsp->num_mems; i++)
  if (dsp->mem[i].type == type)
   return &dsp->mem[i];

 return ((void*)0);
}
