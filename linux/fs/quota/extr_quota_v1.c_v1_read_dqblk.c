
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct v1_disk_dqblk {int dummy; } ;
struct quota_info {int * files; } ;
struct TYPE_7__ {scalar_t__ dqb_bhardlimit; scalar_t__ dqb_bsoftlimit; scalar_t__ dqb_ihardlimit; scalar_t__ dqb_isoftlimit; } ;
struct TYPE_9__ {int type; } ;
struct dquot {int dq_flags; TYPE_2__ dq_dqb; TYPE_5__ dq_id; TYPE_3__* dq_sb; } ;
struct TYPE_8__ {TYPE_1__* s_op; } ;
struct TYPE_6__ {int (* quota_read ) (TYPE_3__*,int,char*,int,int ) ;} ;


 int DQST_READS ;
 int DQ_FAKE_B ;
 int EINVAL ;
 int dqstats_inc (int ) ;
 int from_kqid (int *,TYPE_5__) ;
 int init_user_ns ;
 int memset (struct v1_disk_dqblk*,int ,int) ;
 struct quota_info* sb_dqopt (TYPE_3__*) ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_3__*,int,char*,int,int ) ;
 int v1_disk2mem_dqblk (TYPE_2__*,struct v1_disk_dqblk*) ;
 int v1_dqoff (int ) ;

__attribute__((used)) static int v1_read_dqblk(struct dquot *dquot)
{
 int type = dquot->dq_id.type;
 struct v1_disk_dqblk dqblk;
 struct quota_info *dqopt = sb_dqopt(dquot->dq_sb);

 if (!dqopt->files[type])
  return -EINVAL;


 memset(&dqblk, 0, sizeof(struct v1_disk_dqblk));
 dquot->dq_sb->s_op->quota_read(dquot->dq_sb, type, (char *)&dqblk,
   sizeof(struct v1_disk_dqblk),
   v1_dqoff(from_kqid(&init_user_ns, dquot->dq_id)));

 v1_disk2mem_dqblk(&dquot->dq_dqb, &dqblk);
 if (dquot->dq_dqb.dqb_bhardlimit == 0 &&
     dquot->dq_dqb.dqb_bsoftlimit == 0 &&
     dquot->dq_dqb.dqb_ihardlimit == 0 &&
     dquot->dq_dqb.dqb_isoftlimit == 0)
  set_bit(DQ_FAKE_B, &dquot->dq_flags);
 dqstats_inc(DQST_READS);

 return 0;
}
