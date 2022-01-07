
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct gfs2_glock_iter* private; } ;
struct inode {int dummy; } ;
struct gfs2_glock_iter {int hti; scalar_t__ gl; } ;
struct file {struct seq_file* private_data; } ;


 int gfs2_glock_put (scalar_t__) ;
 int rhashtable_walk_exit (int *) ;
 int seq_release_private (struct inode*,struct file*) ;

__attribute__((used)) static int gfs2_glocks_release(struct inode *inode, struct file *file)
{
 struct seq_file *seq = file->private_data;
 struct gfs2_glock_iter *gi = seq->private;

 if (gi->gl)
  gfs2_glock_put(gi->gl);
 rhashtable_walk_exit(&gi->hti);
 return seq_release_private(inode, file);
}
