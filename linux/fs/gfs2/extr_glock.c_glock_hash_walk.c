
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rhashtable_iter {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct TYPE_2__ {struct gfs2_sbd const* ln_sbd; } ;
struct gfs2_glock {int gl_lockref; TYPE_1__ gl_name; } ;
typedef int (* glock_examiner ) (struct gfs2_glock*) ;


 int EAGAIN ;
 struct gfs2_glock* ERR_PTR (int ) ;
 int IS_ERR (struct gfs2_glock*) ;
 int cond_resched () ;
 int gl_hash_table ;
 scalar_t__ lockref_get_not_dead (int *) ;
 int rhashtable_walk_enter (int *,struct rhashtable_iter*) ;
 int rhashtable_walk_exit (struct rhashtable_iter*) ;
 struct gfs2_glock* rhashtable_walk_next (struct rhashtable_iter*) ;
 int rhashtable_walk_start (struct rhashtable_iter*) ;
 int rhashtable_walk_stop (struct rhashtable_iter*) ;

__attribute__((used)) static void glock_hash_walk(glock_examiner examiner, const struct gfs2_sbd *sdp)
{
 struct gfs2_glock *gl;
 struct rhashtable_iter iter;

 rhashtable_walk_enter(&gl_hash_table, &iter);

 do {
  rhashtable_walk_start(&iter);

  while ((gl = rhashtable_walk_next(&iter)) && !IS_ERR(gl))
   if (gl->gl_name.ln_sbd == sdp &&
       lockref_get_not_dead(&gl->gl_lockref))
    examiner(gl);

  rhashtable_walk_stop(&iter);
 } while (cond_resched(), gl == ERR_PTR(-EAGAIN));

 rhashtable_walk_exit(&iter);
}
