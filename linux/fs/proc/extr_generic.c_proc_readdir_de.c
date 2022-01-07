
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int mode; int low_ino; int namelen; int name; } ;
struct file {int dummy; } ;
struct dir_context {int pos; } ;


 int dir_emit (struct dir_context*,int ,int ,int ,int) ;
 int dir_emit_dots (struct file*,struct dir_context*) ;
 int pde_get (struct proc_dir_entry*) ;
 int pde_put (struct proc_dir_entry*) ;
 struct proc_dir_entry* pde_subdir_first (struct proc_dir_entry*) ;
 struct proc_dir_entry* pde_subdir_next (struct proc_dir_entry*) ;
 int proc_subdir_lock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

int proc_readdir_de(struct file *file, struct dir_context *ctx,
      struct proc_dir_entry *de)
{
 int i;

 if (!dir_emit_dots(file, ctx))
  return 0;

 i = ctx->pos - 2;
 read_lock(&proc_subdir_lock);
 de = pde_subdir_first(de);
 for (;;) {
  if (!de) {
   read_unlock(&proc_subdir_lock);
   return 0;
  }
  if (!i)
   break;
  de = pde_subdir_next(de);
  i--;
 }

 do {
  struct proc_dir_entry *next;
  pde_get(de);
  read_unlock(&proc_subdir_lock);
  if (!dir_emit(ctx, de->name, de->namelen,
       de->low_ino, de->mode >> 12)) {
   pde_put(de);
   return 0;
  }
  ctx->pos++;
  read_lock(&proc_subdir_lock);
  next = pde_subdir_next(de);
  pde_put(de);
  de = next;
 } while (de);
 read_unlock(&proc_subdir_lock);
 return 1;
}
