
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_trans {unsigned int tr_num_databuf_new; unsigned int tr_num_databuf_rm; int tr_databuf; } ;
struct gfs2_sbd {int dummy; } ;


 unsigned int databuf_limit (struct gfs2_sbd*) ;
 int gfs2_before_commit (struct gfs2_sbd*,unsigned int,unsigned int,int *,int) ;

__attribute__((used)) static void databuf_lo_before_commit(struct gfs2_sbd *sdp, struct gfs2_trans *tr)
{
 unsigned int limit = databuf_limit(sdp);
 unsigned int nbuf;
 if (tr == ((void*)0))
  return;
 nbuf = tr->tr_num_databuf_new - tr->tr_num_databuf_rm;
 gfs2_before_commit(sdp, limit, nbuf, &tr->tr_databuf, 1);
}
