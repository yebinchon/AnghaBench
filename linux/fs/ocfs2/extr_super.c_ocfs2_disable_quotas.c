
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * files; } ;
struct super_block {TYPE_1__ s_dquot; } ;
struct ocfs2_super {struct super_block* sb; } ;
struct ocfs2_mem_dqinfo {int dqi_sync_work; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;


 int DQUOT_LIMITS_ENABLED ;
 int DQUOT_USAGE_ENABLED ;
 int OCFS2_MAXQUOTAS ;
 int cancel_delayed_work_sync (int *) ;
 int dquot_disable (struct super_block*,int,int) ;
 struct inode* igrab (int ) ;
 int iput (struct inode*) ;
 TYPE_2__* sb_dqinfo (struct super_block*,int) ;
 int sb_has_quota_loaded (struct super_block*,int) ;

__attribute__((used)) static void ocfs2_disable_quotas(struct ocfs2_super *osb)
{
 int type;
 struct inode *inode;
 struct super_block *sb = osb->sb;
 struct ocfs2_mem_dqinfo *oinfo;



 for (type = 0; type < OCFS2_MAXQUOTAS; type++) {
  if (!sb_has_quota_loaded(sb, type))
   continue;
  oinfo = sb_dqinfo(sb, type)->dqi_priv;
  cancel_delayed_work_sync(&oinfo->dqi_sync_work);
  inode = igrab(sb->s_dquot.files[type]);



  dquot_disable(sb, type, DQUOT_USAGE_ENABLED |
     DQUOT_LIMITS_ENABLED);
  if (!inode)
   continue;
  iput(inode);
 }
}
