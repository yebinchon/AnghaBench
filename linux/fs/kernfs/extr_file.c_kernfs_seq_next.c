
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct kernfs_open_file* private; } ;
struct kernfs_ops {void* (* seq_next ) (struct seq_file*,void*,int *) ;} ;
struct kernfs_open_file {int kn; } ;
typedef int loff_t ;


 int ENODEV ;
 void* ERR_PTR (int ) ;
 struct kernfs_ops* kernfs_ops (int ) ;
 int kernfs_seq_stop_active (struct seq_file*,void*) ;
 void* stub1 (struct seq_file*,void*,int *) ;

__attribute__((used)) static void *kernfs_seq_next(struct seq_file *sf, void *v, loff_t *ppos)
{
 struct kernfs_open_file *of = sf->private;
 const struct kernfs_ops *ops = kernfs_ops(of->kn);

 if (ops->seq_next) {
  void *next = ops->seq_next(sf, v, ppos);

  if (next == ERR_PTR(-ENODEV))
   kernfs_seq_stop_active(sf, next);
  return next;
 } else {




  ++*ppos;
  return ((void*)0);
 }
}
