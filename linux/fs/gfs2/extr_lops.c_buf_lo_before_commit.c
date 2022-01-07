
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_trans {unsigned int tr_num_buf_new; unsigned int tr_num_buf_rm; int tr_buf; } ;
struct gfs2_sbd {int dummy; } ;


 unsigned int buf_limit (struct gfs2_sbd*) ;
 int gfs2_before_commit (struct gfs2_sbd*,unsigned int,unsigned int,int *,int ) ;

__attribute__((used)) static void buf_lo_before_commit(struct gfs2_sbd *sdp, struct gfs2_trans *tr)
{
 unsigned int limit = buf_limit(sdp);
 unsigned int nbuf;
 if (tr == ((void*)0))
  return;
 nbuf = tr->tr_num_buf_new - tr->tr_num_buf_rm;
 gfs2_before_commit(sdp, limit, nbuf, &tr->tr_buf, 0);
}
