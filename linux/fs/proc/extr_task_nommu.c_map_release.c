
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct proc_maps_private* private; } ;
struct proc_maps_private {scalar_t__ mm; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int mmdrop (scalar_t__) ;
 int seq_release_private (struct inode*,struct file*) ;

__attribute__((used)) static int map_release(struct inode *inode, struct file *file)
{
 struct seq_file *seq = file->private_data;
 struct proc_maps_private *priv = seq->private;

 if (priv->mm)
  mmdrop(priv->mm);

 return seq_release_private(inode, file);
}
