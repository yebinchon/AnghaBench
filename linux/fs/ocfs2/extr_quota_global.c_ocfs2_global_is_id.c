
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_mem_dqinfo {int dqi_gi; } ;
struct ocfs2_global_disk_dqblk {int dqb_id; } ;
struct TYPE_4__ {int type; } ;
struct dquot {TYPE_2__ dq_id; int dq_sb; } ;
struct TYPE_3__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;


 int init_user_ns ;
 int le32_to_cpu (int ) ;
 int make_kqid (int *,int ,int ) ;
 int qid_eq (int ,TYPE_2__) ;
 scalar_t__ qtree_entry_unused (int *,void*) ;
 TYPE_1__* sb_dqinfo (int ,int ) ;

__attribute__((used)) static int ocfs2_global_is_id(void *dp, struct dquot *dquot)
{
 struct ocfs2_global_disk_dqblk *d = dp;
 struct ocfs2_mem_dqinfo *oinfo =
   sb_dqinfo(dquot->dq_sb, dquot->dq_id.type)->dqi_priv;

 if (qtree_entry_unused(&oinfo->dqi_gi, dp))
  return 0;

 return qid_eq(make_kqid(&init_user_ns, dquot->dq_id.type,
    le32_to_cpu(d->dqb_id)),
        dquot->dq_id);
}
