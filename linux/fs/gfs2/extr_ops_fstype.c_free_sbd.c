
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {scalar_t__ sd_lkstats; } ;


 int free_percpu (scalar_t__) ;
 int kfree (struct gfs2_sbd*) ;

void free_sbd(struct gfs2_sbd *sdp)
{
 if (sdp->sd_lkstats)
  free_percpu(sdp->sd_lkstats);
 kfree(sdp);
}
