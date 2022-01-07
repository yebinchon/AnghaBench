
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_alloc_context {int ac_alloc_slot; int ac_last_group; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int ip_last_used_slot; int ip_last_used_group; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;

__attribute__((used)) static inline void ocfs2_save_inode_ac_group(struct inode *dir,
          struct ocfs2_alloc_context *ac)
{
 OCFS2_I(dir)->ip_last_used_group = ac->ac_last_group;
 OCFS2_I(dir)->ip_last_used_slot = ac->ac_alloc_slot;
}
