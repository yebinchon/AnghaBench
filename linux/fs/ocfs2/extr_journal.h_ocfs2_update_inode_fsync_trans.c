
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ocfs2_inode_info {int i_datasync_tid; int i_sync_tid; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {TYPE_1__* h_transaction; } ;
typedef TYPE_2__ handle_t ;
struct TYPE_4__ {int t_tid; } ;


 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;

__attribute__((used)) static inline void ocfs2_update_inode_fsync_trans(handle_t *handle,
        struct inode *inode,
        int datasync)
{
 struct ocfs2_inode_info *oi = OCFS2_I(inode);

 oi->i_sync_tid = handle->h_transaction->t_tid;
 if (datasync)
  oi->i_datasync_tid = handle->h_transaction->t_tid;
}
