
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_5__ {struct dentry* dentry; } ;
struct file {struct dentry* private_data; TYPE_1__ f_path; } ;
struct dir_context {int pos; } ;
struct TYPE_6__ {int len; int name; } ;
struct dentry {int d_lock; struct list_head d_child; TYPE_2__ d_name; struct list_head d_subdirs; } ;
struct TYPE_7__ {int i_ino; } ;


 TYPE_3__* d_inode (struct dentry*) ;
 int dir_emit (struct dir_context*,int ,int ,int ,int ) ;
 int dir_emit_dots (struct file*,struct dir_context*) ;
 int dput (struct dentry*) ;
 int dt_type (TYPE_3__*) ;
 int list_del_init (struct list_head*) ;
 int list_empty (struct list_head*) ;
 int list_move_tail (struct list_head*,struct list_head*) ;
 struct dentry* scan_positives (struct dentry*,struct list_head*,int,struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dcache_readdir(struct file *file, struct dir_context *ctx)
{
 struct dentry *dentry = file->f_path.dentry;
 struct dentry *cursor = file->private_data;
 struct list_head *anchor = &dentry->d_subdirs;
 struct dentry *next = ((void*)0);
 struct list_head *p;

 if (!dir_emit_dots(file, ctx))
  return 0;

 if (ctx->pos == 2)
  p = anchor;
 else if (!list_empty(&cursor->d_child))
  p = &cursor->d_child;
 else
  return 0;

 while ((next = scan_positives(cursor, p, 1, next)) != ((void*)0)) {
  if (!dir_emit(ctx, next->d_name.name, next->d_name.len,
         d_inode(next)->i_ino, dt_type(d_inode(next))))
   break;
  ctx->pos++;
  p = &next->d_child;
 }
 spin_lock(&dentry->d_lock);
 if (next)
  list_move_tail(&cursor->d_child, &next->d_child);
 else
  list_del_init(&cursor->d_child);
 spin_unlock(&dentry->d_lock);
 dput(next);

 return 0;
}
