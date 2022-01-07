
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct orangefs_inode_s {int dummy; } ;
struct orangefs_dir {int error; scalar_t__ token; scalar_t__ end; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {struct orangefs_dir* private_data; TYPE_1__ f_path; } ;
struct dir_context {scalar_t__ pos; } ;
struct dentry {int d_inode; } ;


 int EIO ;
 struct orangefs_inode_s* ORANGEFS_I (int ) ;
 scalar_t__ ORANGEFS_ITERATE_END ;
 int PART_MASK ;
 int PART_SHIFT ;
 int dir_emit_dot (struct file*,struct dir_context*) ;
 int dir_emit_dotdot (struct file*,struct dir_context*) ;
 int orangefs_dir_fill (struct orangefs_inode_s*,struct orangefs_dir*,struct dentry*,struct dir_context*) ;
 int orangefs_dir_more (struct orangefs_inode_s*,struct orangefs_dir*,struct dentry*) ;

__attribute__((used)) static int orangefs_dir_iterate(struct file *file,
    struct dir_context *ctx)
{
 struct orangefs_inode_s *oi;
 struct orangefs_dir *od;
 struct dentry *dentry;
 int r;

 dentry = file->f_path.dentry;
 oi = ORANGEFS_I(dentry->d_inode);
 od = file->private_data;

 if (od->error)
  return od->error;

 if (ctx->pos == 0) {
  if (!dir_emit_dot(file, ctx))
   return 0;
  ctx->pos++;
 }
 if (ctx->pos == 1) {
  if (!dir_emit_dotdot(file, ctx))
   return 0;
  ctx->pos = 1 << PART_SHIFT;
 }





 if ((ctx->pos & PART_MASK) == 0)
  return -EIO;

 r = 0;





 while (od->token != ORANGEFS_ITERATE_END &&
     ctx->pos > od->end) {
  r = orangefs_dir_more(oi, od, dentry);
  if (r)
   return r;
 }
 if (od->token == ORANGEFS_ITERATE_END && ctx->pos > od->end)
  return -EIO;


 if (ctx->pos < od->end) {
  r = orangefs_dir_fill(oi, od, dentry, ctx);
  if (r)
   return r;
 }


 if (od->token != ORANGEFS_ITERATE_END) {
  r = orangefs_dir_more(oi, od, dentry);
  if (r)
   return r;
  r = orangefs_dir_fill(oi, od, dentry, ctx);
 }

 return r;
}
