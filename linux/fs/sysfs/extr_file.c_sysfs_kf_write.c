
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysfs_ops {int (* store ) (struct kobject*,int ,char*,size_t) ;} ;
struct kobject {int dummy; } ;
struct kernfs_open_file {TYPE_2__* kn; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_4__ {int priv; TYPE_1__* parent; } ;
struct TYPE_3__ {struct kobject* priv; } ;


 int stub1 (struct kobject*,int ,char*,size_t) ;
 struct sysfs_ops* sysfs_file_ops (TYPE_2__*) ;

__attribute__((used)) static ssize_t sysfs_kf_write(struct kernfs_open_file *of, char *buf,
         size_t count, loff_t pos)
{
 const struct sysfs_ops *ops = sysfs_file_ops(of->kn);
 struct kobject *kobj = of->kn->parent->priv;

 if (!count)
  return 0;

 return ops->store(kobj, of->kn->priv, buf, count);
}
