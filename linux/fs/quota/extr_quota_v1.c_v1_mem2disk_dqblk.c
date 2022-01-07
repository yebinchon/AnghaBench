
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v1_disk_dqblk {int dqb_btime; int dqb_itime; void* dqb_curblocks; void* dqb_bsoftlimit; void* dqb_bhardlimit; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; } ;
struct mem_dqblk {int dqb_btime; int dqb_itime; int dqb_curspace; int dqb_bsoftlimit; int dqb_bhardlimit; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; } ;


 void* v1_stoqb (int ) ;

__attribute__((used)) static void v1_mem2disk_dqblk(struct v1_disk_dqblk *d, struct mem_dqblk *m)
{
 d->dqb_ihardlimit = m->dqb_ihardlimit;
 d->dqb_isoftlimit = m->dqb_isoftlimit;
 d->dqb_curinodes = m->dqb_curinodes;
 d->dqb_bhardlimit = v1_stoqb(m->dqb_bhardlimit);
 d->dqb_bsoftlimit = v1_stoqb(m->dqb_bsoftlimit);
 d->dqb_curblocks = v1_stoqb(m->dqb_curspace);
 d->dqb_itime = m->dqb_itime;
 d->dqb_btime = m->dqb_btime;
}
