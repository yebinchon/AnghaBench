
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_global_disk_dqblk {scalar_t__ dqb_pad2; scalar_t__ dqb_pad1; void* dqb_itime; void* dqb_btime; void* dqb_curspace; void* dqb_bsoftlimit; void* dqb_bhardlimit; void* dqb_curinodes; void* dqb_isoftlimit; void* dqb_ihardlimit; void* dqb_use_count; void* dqb_id; } ;
struct mem_dqblk {int dqb_itime; int dqb_btime; int dqb_curspace; int dqb_bsoftlimit; int dqb_bhardlimit; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; } ;
struct dquot {int dq_id; struct mem_dqblk dq_dqb; } ;
struct TYPE_2__ {int dq_use_count; } ;


 TYPE_1__* OCFS2_DQUOT (struct dquot*) ;
 void* cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int from_kqid (int *,int ) ;
 int init_user_ns ;

__attribute__((used)) static void ocfs2_global_mem2diskdqb(void *dp, struct dquot *dquot)
{
 struct ocfs2_global_disk_dqblk *d = dp;
 struct mem_dqblk *m = &dquot->dq_dqb;

 d->dqb_id = cpu_to_le32(from_kqid(&init_user_ns, dquot->dq_id));
 d->dqb_use_count = cpu_to_le32(OCFS2_DQUOT(dquot)->dq_use_count);
 d->dqb_ihardlimit = cpu_to_le64(m->dqb_ihardlimit);
 d->dqb_isoftlimit = cpu_to_le64(m->dqb_isoftlimit);
 d->dqb_curinodes = cpu_to_le64(m->dqb_curinodes);
 d->dqb_bhardlimit = cpu_to_le64(m->dqb_bhardlimit);
 d->dqb_bsoftlimit = cpu_to_le64(m->dqb_bsoftlimit);
 d->dqb_curspace = cpu_to_le64(m->dqb_curspace);
 d->dqb_btime = cpu_to_le64(m->dqb_btime);
 d->dqb_itime = cpu_to_le64(m->dqb_itime);
 d->dqb_pad1 = d->dqb_pad2 = 0;
}
