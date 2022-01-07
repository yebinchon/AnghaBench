
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {TYPE_1__* dq_op; } ;
struct dquot {int dq_dqb_lock; int dq_count; int dq_id; struct super_block* dq_sb; int dq_dirty; int dq_hash; int dq_inuse; int dq_free; int dq_lock; } ;
struct TYPE_2__ {struct dquot* (* alloc_dquot ) (struct super_block*,int) ;} ;


 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 int make_kqid_invalid (int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 struct dquot* stub1 (struct super_block*,int) ;

__attribute__((used)) static struct dquot *get_empty_dquot(struct super_block *sb, int type)
{
 struct dquot *dquot;

 dquot = sb->dq_op->alloc_dquot(sb, type);
 if(!dquot)
  return ((void*)0);

 mutex_init(&dquot->dq_lock);
 INIT_LIST_HEAD(&dquot->dq_free);
 INIT_LIST_HEAD(&dquot->dq_inuse);
 INIT_HLIST_NODE(&dquot->dq_hash);
 INIT_LIST_HEAD(&dquot->dq_dirty);
 dquot->dq_sb = sb;
 dquot->dq_id = make_kqid_invalid(type);
 atomic_set(&dquot->dq_count, 1);
 spin_lock_init(&dquot->dq_dqb_lock);

 return dquot;
}
