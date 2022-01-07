
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct kernfs_open_file* private; } ;
struct kernfs_ops {int (* seq_stop ) (struct seq_file*,void*) ;} ;
struct kernfs_open_file {int kn; } ;


 struct kernfs_ops* kernfs_ops (int ) ;
 int kernfs_put_active (int ) ;
 int stub1 (struct seq_file*,void*) ;

__attribute__((used)) static void kernfs_seq_stop_active(struct seq_file *sf, void *v)
{
 struct kernfs_open_file *of = sf->private;
 const struct kernfs_ops *ops = kernfs_ops(of->kn);

 if (ops->seq_stop)
  ops->seq_stop(sf, v);
 kernfs_put_active(of->kn);
}
