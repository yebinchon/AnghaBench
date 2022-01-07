
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int osb_dlm_debug; } ;
struct TYPE_2__ {int l_debug_list; } ;
struct ocfs2_dlm_seq_priv {int p_dlm_debug; TYPE_1__ p_iter_res; } ;
struct inode {struct ocfs2_super* i_private; } ;
struct file {int dummy; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 struct ocfs2_dlm_seq_priv* __seq_open_private (struct file*,int *,int) ;
 int mlog_errno (int) ;
 int ocfs2_add_lockres_tracking (TYPE_1__*,int ) ;
 int ocfs2_dlm_seq_ops ;
 int ocfs2_get_dlm_debug (int ) ;

__attribute__((used)) static int ocfs2_dlm_debug_open(struct inode *inode, struct file *file)
{
 struct ocfs2_dlm_seq_priv *priv;
 struct ocfs2_super *osb;

 priv = __seq_open_private(file, &ocfs2_dlm_seq_ops, sizeof(*priv));
 if (!priv) {
  mlog_errno(-ENOMEM);
  return -ENOMEM;
 }

 osb = inode->i_private;
 ocfs2_get_dlm_debug(osb->osb_dlm_debug);
 priv->p_dlm_debug = osb->osb_dlm_debug;
 INIT_LIST_HEAD(&priv->p_iter_res.l_debug_list);

 ocfs2_add_lockres_tracking(&priv->p_iter_res,
       priv->p_dlm_debug);

 return 0;
}
