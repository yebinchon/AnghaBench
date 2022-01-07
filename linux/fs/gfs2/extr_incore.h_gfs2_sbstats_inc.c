
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gfs2_sbd {int sd_lkstats; } ;
struct TYPE_5__ {size_t ln_type; struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {TYPE_2__ gl_name; } ;
struct TYPE_6__ {TYPE_1__* lkstats; } ;
struct TYPE_4__ {int * stats; } ;


 int preempt_disable () ;
 int preempt_enable () ;
 TYPE_3__* this_cpu_ptr (int ) ;

__attribute__((used)) static inline void gfs2_sbstats_inc(const struct gfs2_glock *gl, int which)
{
 const struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;
 preempt_disable();
 this_cpu_ptr(sdp->sd_lkstats)->lkstats[gl->gl_name.ln_type].stats[which]++;
 preempt_enable();
}
