
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_coeff_ctl {struct wm_coeff_ctl* name; struct wm_coeff_ctl* cache; } ;


 int kfree (struct wm_coeff_ctl*) ;

__attribute__((used)) static void wm_adsp_free_ctl_blk(struct wm_coeff_ctl *ctl)
{
 kfree(ctl->cache);
 kfree(ctl->name);
 kfree(ctl);
}
