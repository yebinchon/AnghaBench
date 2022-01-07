
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dquot {int dq_dirty; int dq_flags; int dq_sb; } ;
struct TYPE_2__ {int flags; } ;


 int DQUOT_NOLIST_DIRTY ;
 int DQ_MOD_B ;
 int dq_list_lock ;
 int list_del_init (int *) ;
 TYPE_1__* sb_dqopt (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static inline int clear_dquot_dirty(struct dquot *dquot)
{
 if (sb_dqopt(dquot->dq_sb)->flags & DQUOT_NOLIST_DIRTY)
  return test_and_clear_bit(DQ_MOD_B, &dquot->dq_flags);

 spin_lock(&dq_list_lock);
 if (!test_and_clear_bit(DQ_MOD_B, &dquot->dq_flags)) {
  spin_unlock(&dq_list_lock);
  return 0;
 }
 list_del_init(&dquot->dq_dirty);
 spin_unlock(&dq_list_lock);
 return 1;
}
