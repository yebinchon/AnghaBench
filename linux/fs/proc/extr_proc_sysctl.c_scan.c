
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dir_context {unsigned long pos; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {int mode; } ;


 int S_ISLNK (int ) ;
 int proc_sys_fill_cache (struct file*,struct dir_context*,struct ctl_table_header*,struct ctl_table*) ;
 int proc_sys_link_fill_cache (struct file*,struct dir_context*,struct ctl_table_header*,struct ctl_table*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int scan(struct ctl_table_header *head, struct ctl_table *table,
  unsigned long *pos, struct file *file,
  struct dir_context *ctx)
{
 bool res;

 if ((*pos)++ < ctx->pos)
  return 1;

 if (unlikely(S_ISLNK(table->mode)))
  res = proc_sys_link_fill_cache(file, ctx, head, table);
 else
  res = proc_sys_fill_cache(file, ctx, head, table);

 if (res)
  ctx->pos = *pos;

 return res;
}
