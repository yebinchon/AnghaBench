
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct super_block {TYPE_1__* s_op; } ;
struct qtree_mem_dqinfo {int dqi_entry_size; TYPE_2__* dqi_ops; } ;
struct mem_dqblk {int dummy; } ;
struct TYPE_9__ {int dqb_isoftlimit; int dqb_ihardlimit; int dqb_bsoftlimit; int dqb_bhardlimit; } ;
struct TYPE_10__ {int type; } ;
struct dquot {int dq_dqb_lock; int dq_flags; TYPE_4__ dq_dqb; TYPE_5__ dq_id; void* dq_off; struct super_block* dq_sb; } ;
typedef void* loff_t ;
struct TYPE_8__ {int * files; } ;
struct TYPE_7__ {int (* disk2mem_dqblk ) (struct dquot*,char*) ;} ;
struct TYPE_6__ {int (* quota_read ) (struct super_block*,int,char*,int,void*) ;} ;


 int DQST_READS ;
 int DQ_FAKE_B ;
 int EIO ;
 int ENOMEM ;
 int dqstats_inc (int ) ;
 void* find_dqentry (struct qtree_mem_dqinfo*,struct dquot*) ;
 int from_kqid (int *,TYPE_5__) ;
 char* getdqbuf (int) ;
 int init_user_ns ;
 int kfree (char*) ;
 int memset (TYPE_4__*,int ,int) ;
 int quota_error (struct super_block*,char*,...) ;
 TYPE_3__* sb_dqopt (struct super_block*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct super_block*,int,char*,int,void*) ;
 int stub2 (struct dquot*,char*) ;

int qtree_read_dquot(struct qtree_mem_dqinfo *info, struct dquot *dquot)
{
 int type = dquot->dq_id.type;
 struct super_block *sb = dquot->dq_sb;
 loff_t offset;
 char *ddquot;
 int ret = 0;
 if (!dquot->dq_off) {
  offset = find_dqentry(info, dquot);
  if (offset <= 0) {
   if (offset < 0)
    quota_error(sb,"Can't read quota structure "
         "for id %u",
         from_kqid(&init_user_ns,
            dquot->dq_id));
   dquot->dq_off = 0;
   set_bit(DQ_FAKE_B, &dquot->dq_flags);
   memset(&dquot->dq_dqb, 0, sizeof(struct mem_dqblk));
   ret = offset;
   goto out;
  }
  dquot->dq_off = offset;
 }
 ddquot = getdqbuf(info->dqi_entry_size);
 if (!ddquot)
  return -ENOMEM;
 ret = sb->s_op->quota_read(sb, type, ddquot, info->dqi_entry_size,
       dquot->dq_off);
 if (ret != info->dqi_entry_size) {
  if (ret >= 0)
   ret = -EIO;
  quota_error(sb, "Error while reading quota structure for id %u",
       from_kqid(&init_user_ns, dquot->dq_id));
  set_bit(DQ_FAKE_B, &dquot->dq_flags);
  memset(&dquot->dq_dqb, 0, sizeof(struct mem_dqblk));
  kfree(ddquot);
  goto out;
 }
 spin_lock(&dquot->dq_dqb_lock);
 info->dqi_ops->disk2mem_dqblk(dquot, ddquot);
 if (!dquot->dq_dqb.dqb_bhardlimit &&
     !dquot->dq_dqb.dqb_bsoftlimit &&
     !dquot->dq_dqb.dqb_ihardlimit &&
     !dquot->dq_dqb.dqb_isoftlimit)
  set_bit(DQ_FAKE_B, &dquot->dq_flags);
 spin_unlock(&dquot->dq_dqb_lock);
 kfree(ddquot);
out:
 dqstats_inc(DQST_READS);
 return ret;
}
