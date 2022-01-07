
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qc_dqblk {int d_ino_timer; int d_spc_timer; int d_ino_count; scalar_t__ d_space; int d_ino_softlimit; int d_ino_hardlimit; int d_spc_softlimit; int d_spc_hardlimit; } ;
struct mem_dqblk {int dqb_itime; int dqb_btime; int dqb_curinodes; scalar_t__ dqb_rsvspace; scalar_t__ dqb_curspace; int dqb_isoftlimit; int dqb_ihardlimit; int dqb_bsoftlimit; int dqb_bhardlimit; } ;
struct dquot {int dq_dqb_lock; struct mem_dqblk dq_dqb; } ;


 int memset (struct qc_dqblk*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void do_get_dqblk(struct dquot *dquot, struct qc_dqblk *di)
{
 struct mem_dqblk *dm = &dquot->dq_dqb;

 memset(di, 0, sizeof(*di));
 spin_lock(&dquot->dq_dqb_lock);
 di->d_spc_hardlimit = dm->dqb_bhardlimit;
 di->d_spc_softlimit = dm->dqb_bsoftlimit;
 di->d_ino_hardlimit = dm->dqb_ihardlimit;
 di->d_ino_softlimit = dm->dqb_isoftlimit;
 di->d_space = dm->dqb_curspace + dm->dqb_rsvspace;
 di->d_ino_count = dm->dqb_curinodes;
 di->d_spc_timer = dm->dqb_btime;
 di->d_ino_timer = dm->dqb_itime;
 spin_unlock(&dquot->dq_dqb_lock);
}
