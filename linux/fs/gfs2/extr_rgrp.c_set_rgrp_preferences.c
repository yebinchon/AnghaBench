
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ls_jid; } ;
struct gfs2_sbd {int sd_journals; TYPE_1__ sd_lockstruct; } ;
struct gfs2_rgrpd {int rd_flags; } ;


 int GFS2_RDF_PREFERRED ;
 struct gfs2_rgrpd* gfs2_rgrpd_get_first (struct gfs2_sbd*) ;
 struct gfs2_rgrpd* gfs2_rgrpd_get_next (struct gfs2_rgrpd*) ;

__attribute__((used)) static void set_rgrp_preferences(struct gfs2_sbd *sdp)
{
 struct gfs2_rgrpd *rgd, *first;
 int i;



 rgd = gfs2_rgrpd_get_first(sdp);
 for (i = 0; i < sdp->sd_lockstruct.ls_jid; i++)
  rgd = gfs2_rgrpd_get_next(rgd);
 first = rgd;

 do {
  rgd->rd_flags |= GFS2_RDF_PREFERRED;
  for (i = 0; i < sdp->sd_journals; i++) {
   rgd = gfs2_rgrpd_get_next(rgd);
   if (!rgd || rgd == first)
    break;
  }
 } while (rgd && rgd != first);
}
