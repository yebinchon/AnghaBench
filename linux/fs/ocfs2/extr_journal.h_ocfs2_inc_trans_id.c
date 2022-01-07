
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_journal {int j_trans_id; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trans_inc_lock ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline unsigned long ocfs2_inc_trans_id(struct ocfs2_journal *j)
{
 unsigned long old_id;
 spin_lock(&trans_inc_lock);
 old_id = j->j_trans_id++;
 if (unlikely(!j->j_trans_id))
  j->j_trans_id = 1;
 spin_unlock(&trans_inc_lock);
 return old_id;
}
