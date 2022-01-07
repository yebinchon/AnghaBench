
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysfs_ops {int (* show ) (struct kobject*,int ,char*) ;} ;
struct seq_file {struct kernfs_open_file* private; } ;
struct kobject {int dummy; } ;
struct kernfs_open_file {TYPE_2__* kn; } ;
typedef int ssize_t ;
struct TYPE_4__ {int priv; TYPE_1__* parent; } ;
struct TYPE_3__ {struct kobject* priv; } ;


 int PAGE_SIZE ;
 int memset (char*,int ,int) ;
 int printk (char*,int (*) (struct kobject*,int ,char*)) ;
 int seq_commit (struct seq_file*,int) ;
 int seq_get_buf (struct seq_file*,char**) ;
 int stub1 (struct kobject*,int ,char*) ;
 struct sysfs_ops* sysfs_file_ops (TYPE_2__*) ;

__attribute__((used)) static int sysfs_kf_seq_show(struct seq_file *sf, void *v)
{
 struct kernfs_open_file *of = sf->private;
 struct kobject *kobj = of->kn->parent->priv;
 const struct sysfs_ops *ops = sysfs_file_ops(of->kn);
 ssize_t count;
 char *buf;


 count = seq_get_buf(sf, &buf);
 if (count < PAGE_SIZE) {
  seq_commit(sf, -1);
  return 0;
 }
 memset(buf, 0, PAGE_SIZE);





 if (ops->show) {
  count = ops->show(kobj, of->kn->priv, buf);
  if (count < 0)
   return count;
 }





 if (count >= (ssize_t)PAGE_SIZE) {
  printk("fill_read_buffer: %pS returned bad count\n",
    ops->show);

  count = PAGE_SIZE - 1;
 }
 seq_commit(sf, count);
 return 0;
}
