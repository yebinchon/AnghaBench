
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct kobject {int dummy; } ;
struct kernfs_open_file {int file; TYPE_2__* kn; } ;
struct bin_attribute {int (* mmap ) (int ,struct kobject*,struct bin_attribute*,struct vm_area_struct*) ;} ;
struct TYPE_4__ {TYPE_1__* parent; struct bin_attribute* priv; } ;
struct TYPE_3__ {struct kobject* priv; } ;


 int stub1 (int ,struct kobject*,struct bin_attribute*,struct vm_area_struct*) ;

__attribute__((used)) static int sysfs_kf_bin_mmap(struct kernfs_open_file *of,
        struct vm_area_struct *vma)
{
 struct bin_attribute *battr = of->kn->priv;
 struct kobject *kobj = of->kn->parent->priv;

 return battr->mmap(of->file, kobj, battr, vma);
}
