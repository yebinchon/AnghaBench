
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct kernfs_open_file* private; } ;
struct kernfs_ops {void* (* seq_start ) (struct seq_file*,int *) ;} ;
struct kernfs_open_file {int kn; int mutex; } ;
typedef int loff_t ;


 int ENODEV ;
 void* ERR_PTR (int ) ;
 int kernfs_get_active (int ) ;
 struct kernfs_ops* kernfs_ops (int ) ;
 int kernfs_seq_stop_active (struct seq_file*,void*) ;
 int mutex_lock (int *) ;
 void* stub1 (struct seq_file*,int *) ;

__attribute__((used)) static void *kernfs_seq_start(struct seq_file *sf, loff_t *ppos)
{
 struct kernfs_open_file *of = sf->private;
 const struct kernfs_ops *ops;





 mutex_lock(&of->mutex);
 if (!kernfs_get_active(of->kn))
  return ERR_PTR(-ENODEV);

 ops = kernfs_ops(of->kn);
 if (ops->seq_start) {
  void *next = ops->seq_start(sf, ppos);

  if (next == ERR_PTR(-ENODEV))
   kernfs_seq_stop_active(sf, next);
  return next;
 } else {




  return ((void*)0) + !*ppos;
 }
}
