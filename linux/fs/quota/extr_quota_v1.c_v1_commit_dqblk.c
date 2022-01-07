
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct v1_disk_dqblk {int dqb_itime; int dqb_btime; } ;
struct TYPE_12__ {short type; int gid; int uid; } ;
struct dquot {TYPE_3__* dq_sb; TYPE_7__ dq_id; int dq_dqb; } ;
typedef int ssize_t ;
struct TYPE_11__ {scalar_t__* files; TYPE_1__* info; } ;
struct TYPE_10__ {TYPE_2__* s_op; } ;
struct TYPE_9__ {int (* quota_write ) (TYPE_3__*,short,char*,int,int ) ;} ;
struct TYPE_8__ {int dqi_igrace; int dqi_bgrace; } ;


 int DQST_WRITES ;
 int EIO ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 short GRPQUOTA ;
 short USRQUOTA ;
 int dqstats_inc (int ) ;
 int from_kqid (int *,TYPE_7__) ;
 scalar_t__ gid_eq (int ,int ) ;
 int init_user_ns ;
 int quota_error (TYPE_3__*,char*) ;
 TYPE_4__* sb_dqopt (TYPE_3__*) ;
 int stub1 (TYPE_3__*,short,char*,int,int ) ;
 scalar_t__ uid_eq (int ,int ) ;
 int v1_dqoff (int ) ;
 int v1_mem2disk_dqblk (struct v1_disk_dqblk*,int *) ;

__attribute__((used)) static int v1_commit_dqblk(struct dquot *dquot)
{
 short type = dquot->dq_id.type;
 ssize_t ret;
 struct v1_disk_dqblk dqblk;

 v1_mem2disk_dqblk(&dqblk, &dquot->dq_dqb);
 if (((type == USRQUOTA) && uid_eq(dquot->dq_id.uid, GLOBAL_ROOT_UID)) ||
     ((type == GRPQUOTA) && gid_eq(dquot->dq_id.gid, GLOBAL_ROOT_GID))) {
  dqblk.dqb_btime =
   sb_dqopt(dquot->dq_sb)->info[type].dqi_bgrace;
  dqblk.dqb_itime =
   sb_dqopt(dquot->dq_sb)->info[type].dqi_igrace;
 }
 ret = 0;
 if (sb_dqopt(dquot->dq_sb)->files[type])
  ret = dquot->dq_sb->s_op->quota_write(dquot->dq_sb, type,
   (char *)&dqblk, sizeof(struct v1_disk_dqblk),
   v1_dqoff(from_kqid(&init_user_ns, dquot->dq_id)));
 if (ret != sizeof(struct v1_disk_dqblk)) {
  quota_error(dquot->dq_sb, "dquota write failed");
  if (ret >= 0)
   ret = -EIO;
  goto out;
 }
 ret = 0;

out:
 dqstats_inc(DQST_WRITES);

 return ret;
}
