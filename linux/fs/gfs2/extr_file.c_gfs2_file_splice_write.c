
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_inode_info {int dummy; } ;
struct gfs2_inode {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int host; } ;


 struct gfs2_inode* GFS2_I (int ) ;
 int gfs2_rsqa_alloc (struct gfs2_inode*) ;
 int gfs2_size_hint (struct file*,int ,size_t) ;
 int iter_file_splice_write (struct pipe_inode_info*,struct file*,int *,size_t,unsigned int) ;

__attribute__((used)) static ssize_t gfs2_file_splice_write(struct pipe_inode_info *pipe,
          struct file *out, loff_t *ppos,
          size_t len, unsigned int flags)
{
 int error;
 struct gfs2_inode *ip = GFS2_I(out->f_mapping->host);

 error = gfs2_rsqa_alloc(ip);
 if (error)
  return (ssize_t)error;

 gfs2_size_hint(out, *ppos, len);

 return iter_file_splice_write(pipe, out, ppos, len, flags);
}
