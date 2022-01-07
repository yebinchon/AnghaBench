
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {TYPE_1__* dq_op; int s_user_ns; } ;
struct kqid {int type; } ;
struct dquot {int dq_sb; int dq_flags; int dq_count; struct kqid dq_id; } ;
struct TYPE_2__ {int (* acquire_dquot ) (struct dquot*) ;} ;


 int BUG_ON (int) ;
 int DQST_CACHE_HITS ;
 int DQST_LOOKUPS ;
 int DQ_ACTIVE_B ;
 int EINVAL ;
 struct dquot* ERR_PTR (int) ;
 int ESRCH ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int do_destroy_dquot (struct dquot*) ;
 int dq_list_lock ;
 int dq_state_lock ;
 int dqput (struct dquot*) ;
 int dqstats_inc (int ) ;
 struct dquot* find_dquot (unsigned int,struct super_block*,struct kqid) ;
 struct dquot* get_empty_dquot (struct super_block*,int ) ;
 unsigned int hashfn (struct super_block*,struct kqid) ;
 int insert_dquot_hash (struct dquot*) ;
 int put_inuse (struct dquot*) ;
 int qid_has_mapping (int ,struct kqid) ;
 int remove_free_dquot (struct dquot*) ;
 int sb_has_quota_active (struct super_block*,int ) ;
 int schedule () ;
 int smp_rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct dquot*) ;
 int test_bit (int ,int *) ;
 int wait_on_dquot (struct dquot*) ;

struct dquot *dqget(struct super_block *sb, struct kqid qid)
{
 unsigned int hashent = hashfn(sb, qid);
 struct dquot *dquot, *empty = ((void*)0);

 if (!qid_has_mapping(sb->s_user_ns, qid))
  return ERR_PTR(-EINVAL);

        if (!sb_has_quota_active(sb, qid.type))
  return ERR_PTR(-ESRCH);
we_slept:
 spin_lock(&dq_list_lock);
 spin_lock(&dq_state_lock);
 if (!sb_has_quota_active(sb, qid.type)) {
  spin_unlock(&dq_state_lock);
  spin_unlock(&dq_list_lock);
  dquot = ERR_PTR(-ESRCH);
  goto out;
 }
 spin_unlock(&dq_state_lock);

 dquot = find_dquot(hashent, sb, qid);
 if (!dquot) {
  if (!empty) {
   spin_unlock(&dq_list_lock);
   empty = get_empty_dquot(sb, qid.type);
   if (!empty)
    schedule();
   goto we_slept;
  }
  dquot = empty;
  empty = ((void*)0);
  dquot->dq_id = qid;

  put_inuse(dquot);

  insert_dquot_hash(dquot);
  spin_unlock(&dq_list_lock);
  dqstats_inc(DQST_LOOKUPS);
 } else {
  if (!atomic_read(&dquot->dq_count))
   remove_free_dquot(dquot);
  atomic_inc(&dquot->dq_count);
  spin_unlock(&dq_list_lock);
  dqstats_inc(DQST_CACHE_HITS);
  dqstats_inc(DQST_LOOKUPS);
 }


 wait_on_dquot(dquot);

 if (!test_bit(DQ_ACTIVE_B, &dquot->dq_flags)) {
  int err;

  err = sb->dq_op->acquire_dquot(dquot);
  if (err < 0) {
   dqput(dquot);
   dquot = ERR_PTR(err);
   goto out;
  }
 }




 smp_rmb();



out:
 if (empty)
  do_destroy_dquot(empty);

 return dquot;
}
