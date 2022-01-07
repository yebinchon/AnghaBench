
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qc_dqblk {int d_ino_timer; int d_spc_timer; int d_ino_count; int d_ino_softlimit; int d_ino_hardlimit; int d_space; int d_spc_softlimit; int d_spc_hardlimit; } ;
struct if_dqblk {int dqb_valid; int dqb_itime; int dqb_btime; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; int dqb_curspace; void* dqb_bsoftlimit; void* dqb_bhardlimit; } ;


 int QIF_ALL ;
 int memset (struct if_dqblk*,int ,int) ;
 void* stoqb (int ) ;

__attribute__((used)) static void copy_to_if_dqblk(struct if_dqblk *dst, struct qc_dqblk *src)
{
 memset(dst, 0, sizeof(*dst));
 dst->dqb_bhardlimit = stoqb(src->d_spc_hardlimit);
 dst->dqb_bsoftlimit = stoqb(src->d_spc_softlimit);
 dst->dqb_curspace = src->d_space;
 dst->dqb_ihardlimit = src->d_ino_hardlimit;
 dst->dqb_isoftlimit = src->d_ino_softlimit;
 dst->dqb_curinodes = src->d_ino_count;
 dst->dqb_btime = src->d_spc_timer;
 dst->dqb_itime = src->d_ino_timer;
 dst->dqb_valid = QIF_ALL;
}
