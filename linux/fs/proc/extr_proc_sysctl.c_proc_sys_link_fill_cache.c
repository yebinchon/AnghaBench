
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dir_context {int dummy; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {int dummy; } ;


 scalar_t__ IS_ERR (struct ctl_table_header*) ;
 int proc_sys_fill_cache (struct file*,struct dir_context*,struct ctl_table_header*,struct ctl_table*) ;
 scalar_t__ sysctl_follow_link (struct ctl_table_header**,struct ctl_table**) ;
 int sysctl_head_finish (struct ctl_table_header*) ;
 struct ctl_table_header* sysctl_head_grab (struct ctl_table_header*) ;

__attribute__((used)) static bool proc_sys_link_fill_cache(struct file *file,
        struct dir_context *ctx,
        struct ctl_table_header *head,
        struct ctl_table *table)
{
 bool ret = 1;

 head = sysctl_head_grab(head);
 if (IS_ERR(head))
  return 0;


 if (sysctl_follow_link(&head, &table))
  goto out;

 ret = proc_sys_fill_cache(file, ctx, head, table);
out:
 sysctl_head_finish(head);
 return ret;
}
