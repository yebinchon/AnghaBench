
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_rgrpd {int rd_flags; struct gfs2_glock* rd_gl; } ;
struct gfs2_glock {scalar_t__ gl_state; int gl_flags; int gl_holders; } ;


 int GFS2_RDF_PREFERRED ;
 int GLF_DEMOTE ;
 int GLF_DEMOTE_IN_PROGRESS ;
 scalar_t__ LM_ST_UNLOCKED ;
 scalar_t__ list_empty (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int fast_to_acquire(struct gfs2_rgrpd *rgd)
{
 struct gfs2_glock *gl = rgd->rd_gl;

 if (gl->gl_state != LM_ST_UNLOCKED && list_empty(&gl->gl_holders) &&
     !test_bit(GLF_DEMOTE_IN_PROGRESS, &gl->gl_flags) &&
     !test_bit(GLF_DEMOTE, &gl->gl_flags))
  return 1;
 if (rgd->rd_flags & GFS2_RDF_PREFERRED)
  return 1;
 return 0;
}
