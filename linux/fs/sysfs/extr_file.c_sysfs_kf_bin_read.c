
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kernfs_open_file {int file; TYPE_2__* kn; } ;
struct bin_attribute {int (* read ) (int ,struct kobject*,struct bin_attribute*,char*,scalar_t__,size_t) ;} ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_6__ {scalar_t__ i_size; } ;
struct TYPE_5__ {TYPE_1__* parent; struct bin_attribute* priv; } ;
struct TYPE_4__ {struct kobject* priv; } ;


 int EIO ;
 TYPE_3__* file_inode (int ) ;
 int stub1 (int ,struct kobject*,struct bin_attribute*,char*,scalar_t__,size_t) ;

__attribute__((used)) static ssize_t sysfs_kf_bin_read(struct kernfs_open_file *of, char *buf,
     size_t count, loff_t pos)
{
 struct bin_attribute *battr = of->kn->priv;
 struct kobject *kobj = of->kn->parent->priv;
 loff_t size = file_inode(of->file)->i_size;

 if (!count)
  return 0;

 if (size) {
  if (pos >= size)
   return 0;
  if (pos + count > size)
   count = size - pos;
 }

 if (!battr->read)
  return -EIO;

 return battr->read(of->file, kobj, battr, buf, pos, count);
}
