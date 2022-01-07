
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int dummy; } ;
struct file_system_type {int dummy; } ;


 int FS_CONTEXT_FOR_MOUNT ;
 struct fs_context* alloc_fs_context (struct file_system_type*,int *,unsigned int,int ,int ) ;

struct fs_context *fs_context_for_mount(struct file_system_type *fs_type,
     unsigned int sb_flags)
{
 return alloc_fs_context(fs_type, ((void*)0), sb_flags, 0,
     FS_CONTEXT_FOR_MOUNT);
}
