
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int name; } ;
struct skl_module_cfg {int dummy; } ;
struct skl_debug {int modules; } ;


 int debugfs_create_file (int ,int,int ,struct skl_module_cfg*,int *) ;
 int mcfg_fops ;

void skl_debug_init_module(struct skl_debug *d,
   struct snd_soc_dapm_widget *w,
   struct skl_module_cfg *mconfig)
{
 debugfs_create_file(w->name, 0444, d->modules, mconfig,
       &mcfg_fops);
}
