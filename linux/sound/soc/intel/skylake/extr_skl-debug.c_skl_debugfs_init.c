
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skl_dev {TYPE_2__* pci; TYPE_1__* component; } ;
struct skl_debug {void* fs; void* modules; int * dev; struct skl_dev* skl; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {void* debugfs_root; } ;


 int GFP_KERNEL ;
 void* debugfs_create_dir (char*,void*) ;
 int debugfs_create_file (char*,int,void*,struct skl_debug*,int *) ;
 struct skl_debug* devm_kzalloc (int *,int,int ) ;
 int soft_regs_ctrl_fops ;

struct skl_debug *skl_debugfs_init(struct skl_dev *skl)
{
 struct skl_debug *d;

 d = devm_kzalloc(&skl->pci->dev, sizeof(*d), GFP_KERNEL);
 if (!d)
  return ((void*)0);


 d->fs = debugfs_create_dir("dsp", skl->component->debugfs_root);

 d->skl = skl;
 d->dev = &skl->pci->dev;


 d->modules = debugfs_create_dir("modules", d->fs);

 debugfs_create_file("fw_soft_regs_rd", 0444, d->fs, d,
       &soft_regs_ctrl_fops);

 return d;
}
