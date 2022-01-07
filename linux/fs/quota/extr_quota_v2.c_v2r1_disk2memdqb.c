
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v2r1_disk_dqblk {int dqb_itime; int dqb_btime; int dqb_curspace; int dqb_bsoftlimit; int dqb_bhardlimit; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; } ;
struct mem_dqblk {void* dqb_itime; void* dqb_btime; void* dqb_curspace; void* dqb_bsoftlimit; void* dqb_bhardlimit; void* dqb_curinodes; void* dqb_isoftlimit; void* dqb_ihardlimit; } ;
struct dquot {struct mem_dqblk dq_dqb; } ;


 int cpu_to_le64 (int) ;
 void* le64_to_cpu (int ) ;
 int memcmp (struct v2r1_disk_dqblk*,void*,int) ;
 int memset (struct v2r1_disk_dqblk*,int ,int) ;
 void* v2_qbtos (void*) ;

__attribute__((used)) static void v2r1_disk2memdqb(struct dquot *dquot, void *dp)
{
 struct v2r1_disk_dqblk *d = dp, empty;
 struct mem_dqblk *m = &dquot->dq_dqb;

 m->dqb_ihardlimit = le64_to_cpu(d->dqb_ihardlimit);
 m->dqb_isoftlimit = le64_to_cpu(d->dqb_isoftlimit);
 m->dqb_curinodes = le64_to_cpu(d->dqb_curinodes);
 m->dqb_itime = le64_to_cpu(d->dqb_itime);
 m->dqb_bhardlimit = v2_qbtos(le64_to_cpu(d->dqb_bhardlimit));
 m->dqb_bsoftlimit = v2_qbtos(le64_to_cpu(d->dqb_bsoftlimit));
 m->dqb_curspace = le64_to_cpu(d->dqb_curspace);
 m->dqb_btime = le64_to_cpu(d->dqb_btime);

 memset(&empty, 0, sizeof(struct v2r1_disk_dqblk));
 empty.dqb_itime = cpu_to_le64(1);
 if (!memcmp(&empty, dp, sizeof(struct v2r1_disk_dqblk)))
  m->dqb_itime = 0;
}
