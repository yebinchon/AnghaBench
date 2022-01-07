
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int dummy; } ;
struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;


 int FS_CONTEXT_FOR_SUBMOUNT ;
 struct fs_context* alloc_fs_context (struct file_system_type*,struct dentry*,int ,int ,int ) ;

struct fs_context *fs_context_for_submount(struct file_system_type *type,
        struct dentry *reference)
{
 return alloc_fs_context(type, reference, 0, 0, FS_CONTEXT_FOR_SUBMOUNT);
}
