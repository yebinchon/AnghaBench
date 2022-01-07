
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_operations {int dummy; } ;
struct seq_file {int size; scalar_t__ buf; struct gfs2_glock_iter* private; } ;
struct inode {int i_private; } ;
struct gfs2_glock_iter {int last_pos; int hti; int * gl; int sdp; } ;
struct file {struct seq_file* private_data; } ;


 int GFP_KERNEL ;
 int GFS2_SEQ_GOODSIZE ;
 int __GFP_NOWARN ;
 int gl_hash_table ;
 scalar_t__ kmalloc (int ,int) ;
 int rhashtable_walk_enter (int *,int *) ;
 int seq_open_private (struct file*,struct seq_operations const*,int) ;

__attribute__((used)) static int __gfs2_glocks_open(struct inode *inode, struct file *file,
         const struct seq_operations *ops)
{
 int ret = seq_open_private(file, ops, sizeof(struct gfs2_glock_iter));
 if (ret == 0) {
  struct seq_file *seq = file->private_data;
  struct gfs2_glock_iter *gi = seq->private;

  gi->sdp = inode->i_private;
  seq->buf = kmalloc(GFS2_SEQ_GOODSIZE, GFP_KERNEL | __GFP_NOWARN);
  if (seq->buf)
   seq->size = GFS2_SEQ_GOODSIZE;




  gi->last_pos = -1;
  gi->gl = ((void*)0);
  rhashtable_walk_enter(&gl_hash_table, &gi->hti);
 }
 return ret;
}
