
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_4__ {scalar_t__* stats; } ;
struct TYPE_3__ {scalar_t__ ln_number; int ln_type; } ;
struct gfs2_glock {TYPE_2__ gl_stats; TYPE_1__ gl_name; } ;


 size_t GFS2_LKS_DCOUNT ;
 size_t GFS2_LKS_QCOUNT ;
 size_t GFS2_LKS_SIRT ;
 size_t GFS2_LKS_SIRTVAR ;
 size_t GFS2_LKS_SRTT ;
 size_t GFS2_LKS_SRTTB ;
 size_t GFS2_LKS_SRTTVAR ;
 size_t GFS2_LKS_SRTTVARB ;
 int seq_printf (struct seq_file*,char*,int ,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long) ;

__attribute__((used)) static int gfs2_glstats_seq_show(struct seq_file *seq, void *iter_ptr)
{
 struct gfs2_glock *gl = iter_ptr;

 seq_printf(seq, "G: n:%u/%llx rtt:%llu/%llu rttb:%llu/%llu irt:%llu/%llu dcnt: %llu qcnt: %llu\n",
     gl->gl_name.ln_type,
     (unsigned long long)gl->gl_name.ln_number,
     (unsigned long long)gl->gl_stats.stats[GFS2_LKS_SRTT],
     (unsigned long long)gl->gl_stats.stats[GFS2_LKS_SRTTVAR],
     (unsigned long long)gl->gl_stats.stats[GFS2_LKS_SRTTB],
     (unsigned long long)gl->gl_stats.stats[GFS2_LKS_SRTTVARB],
     (unsigned long long)gl->gl_stats.stats[GFS2_LKS_SIRT],
     (unsigned long long)gl->gl_stats.stats[GFS2_LKS_SIRTVAR],
     (unsigned long long)gl->gl_stats.stats[GFS2_LKS_DCOUNT],
     (unsigned long long)gl->gl_stats.stats[GFS2_LKS_QCOUNT]);
 return 0;
}
