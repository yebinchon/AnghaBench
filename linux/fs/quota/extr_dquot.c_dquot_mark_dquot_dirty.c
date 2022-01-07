
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t type; } ;
struct dquot {TYPE_2__ dq_id; int dq_sb; int dq_dirty; int dq_flags; } ;
struct TYPE_6__ {int flags; TYPE_1__* info; } ;
struct TYPE_4__ {int dqi_dirty_list; } ;


 int DQUOT_NOLIST_DIRTY ;
 int DQ_ACTIVE_B ;
 int DQ_MOD_B ;
 int dq_list_lock ;
 int list_add (int *,int *) ;
 TYPE_3__* sb_dqopt (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int dquot_mark_dquot_dirty(struct dquot *dquot)
{
 int ret = 1;

 if (!test_bit(DQ_ACTIVE_B, &dquot->dq_flags))
  return 0;

 if (sb_dqopt(dquot->dq_sb)->flags & DQUOT_NOLIST_DIRTY)
  return test_and_set_bit(DQ_MOD_B, &dquot->dq_flags);


 if (test_bit(DQ_MOD_B, &dquot->dq_flags))
  return 1;

 spin_lock(&dq_list_lock);
 if (!test_and_set_bit(DQ_MOD_B, &dquot->dq_flags)) {
  list_add(&dquot->dq_dirty, &sb_dqopt(dquot->dq_sb)->
    info[dquot->dq_id.type].dqi_dirty_list);
  ret = 0;
 }
 spin_unlock(&dq_list_lock);
 return ret;
}
