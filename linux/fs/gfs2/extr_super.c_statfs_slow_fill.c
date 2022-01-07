
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_statfs_change_host {int sc_dinodes; int sc_free; int sc_total; } ;
struct gfs2_rgrpd {scalar_t__ rd_dinodes; scalar_t__ rd_free; scalar_t__ rd_data; } ;


 int gfs2_rgrp_verify (struct gfs2_rgrpd*) ;

__attribute__((used)) static int statfs_slow_fill(struct gfs2_rgrpd *rgd,
       struct gfs2_statfs_change_host *sc)
{
 gfs2_rgrp_verify(rgd);
 sc->sc_total += rgd->rd_data;
 sc->sc_free += rgd->rd_free;
 sc->sc_dinodes += rgd->rd_dinodes;
 return 0;
}
