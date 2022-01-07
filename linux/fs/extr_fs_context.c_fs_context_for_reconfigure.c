
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fs_context {int dummy; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {int s_type; } ;


 int FS_CONTEXT_FOR_RECONFIGURE ;
 struct fs_context* alloc_fs_context (int ,struct dentry*,unsigned int,unsigned int,int ) ;

struct fs_context *fs_context_for_reconfigure(struct dentry *dentry,
     unsigned int sb_flags,
     unsigned int sb_flags_mask)
{
 return alloc_fs_context(dentry->d_sb->s_type, dentry, sb_flags,
    sb_flags_mask, FS_CONTEXT_FOR_RECONFIGURE);
}
