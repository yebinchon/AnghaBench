
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct TYPE_4__ {int id_count; int id_data; } ;
struct TYPE_5__ {TYPE_1__ i_data; } ;
struct ocfs2_dinode {int i_dyn_features; TYPE_2__ id2; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_6__ {int ip_dyn_features; int ip_lock; } ;


 int BUG_ON (int) ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 TYPE_3__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int cpu_to_le16 (int) ;
 int le16_to_cpu (int ) ;
 int memcpy (int ,int ,int ) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ocfs2_duplicate_inline_data(struct inode *s_inode,
           struct buffer_head *s_bh,
           struct inode *t_inode,
           struct buffer_head *t_bh)
{
 int ret;
 handle_t *handle;
 struct ocfs2_super *osb = OCFS2_SB(s_inode->i_sb);
 struct ocfs2_dinode *s_di = (struct ocfs2_dinode *)s_bh->b_data;
 struct ocfs2_dinode *t_di = (struct ocfs2_dinode *)t_bh->b_data;

 BUG_ON(!(OCFS2_I(s_inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL));

 handle = ocfs2_start_trans(osb, OCFS2_INODE_UPDATE_CREDITS);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_journal_access_di(handle, INODE_CACHE(t_inode), t_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 t_di->id2.i_data.id_count = s_di->id2.i_data.id_count;
 memcpy(t_di->id2.i_data.id_data, s_di->id2.i_data.id_data,
        le16_to_cpu(s_di->id2.i_data.id_count));
 spin_lock(&OCFS2_I(t_inode)->ip_lock);
 OCFS2_I(t_inode)->ip_dyn_features |= OCFS2_INLINE_DATA_FL;
 t_di->i_dyn_features = cpu_to_le16(OCFS2_I(t_inode)->ip_dyn_features);
 spin_unlock(&OCFS2_I(t_inode)->ip_lock);

 ocfs2_journal_dirty(handle, t_bh);

out_commit:
 ocfs2_commit_trans(osb, handle);
out:
 return ret;
}
