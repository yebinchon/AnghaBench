
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct kernfs_open_file* private; } ;
struct kernfs_open_file {int mutex; } ;


 int ENODEV ;
 void* ERR_PTR (int ) ;
 int kernfs_seq_stop_active (struct seq_file*,void*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void kernfs_seq_stop(struct seq_file *sf, void *v)
{
 struct kernfs_open_file *of = sf->private;

 if (v != ERR_PTR(-ENODEV))
  kernfs_seq_stop_active(sf, v);
 mutex_unlock(&of->mutex);
}
