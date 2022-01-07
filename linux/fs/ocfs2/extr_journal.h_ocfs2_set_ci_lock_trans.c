
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_journal {int j_trans_id; } ;
struct ocfs2_caching_info {int ci_last_trans; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trans_inc_lock ;

__attribute__((used)) static inline void ocfs2_set_ci_lock_trans(struct ocfs2_journal *journal,
        struct ocfs2_caching_info *ci)
{
 spin_lock(&trans_inc_lock);
 ci->ci_last_trans = journal->j_trans_id;
 spin_unlock(&trans_inc_lock);
}
