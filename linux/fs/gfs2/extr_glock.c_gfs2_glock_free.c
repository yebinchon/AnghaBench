
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_sbd {int sd_glock_wait; int sd_glock_disposal; } ;
struct TYPE_2__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {int gl_rcu; int gl_node; int gl_revokes; TYPE_1__ gl_name; } ;


 int BUG_ON (int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 int call_rcu (int *,int ) ;
 int gfs2_glock_dealloc ;
 int gl_hash_table ;
 int ht_parms ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int smp_mb () ;
 int wake_up (int *) ;
 int wake_up_glock (struct gfs2_glock*) ;

void gfs2_glock_free(struct gfs2_glock *gl)
{
 struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;

 BUG_ON(atomic_read(&gl->gl_revokes));
 rhashtable_remove_fast(&gl_hash_table, &gl->gl_node, ht_parms);
 smp_mb();
 wake_up_glock(gl);
 call_rcu(&gl->gl_rcu, gfs2_glock_dealloc);
 if (atomic_dec_and_test(&sdp->sd_glock_disposal))
  wake_up(&sdp->sd_glock_wait);
}
