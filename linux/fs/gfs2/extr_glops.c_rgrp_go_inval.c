
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct address_space {int dummy; } ;
struct gfs2_sbd {struct address_space sd_aspace; } ;
struct gfs2_rgrpd {int rd_flags; } ;
struct TYPE_3__ {int end; int start; } ;
struct TYPE_4__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {TYPE_1__ gl_vm; int gl_ail_count; TYPE_2__ gl_name; } ;


 int DIO_METADATA ;
 int GFS2_RDF_UPTODATE ;
 int WARN_ON_ONCE (int) ;
 int atomic_read (int *) ;
 int gfs2_assert_withdraw (struct gfs2_sbd*,int) ;
 struct gfs2_rgrpd* gfs2_glock2rgrp (struct gfs2_glock*) ;
 int gfs2_rgrp_brelse (struct gfs2_rgrpd*) ;
 int truncate_inode_pages_range (struct address_space*,int ,int ) ;

__attribute__((used)) static void rgrp_go_inval(struct gfs2_glock *gl, int flags)
{
 struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;
 struct address_space *mapping = &sdp->sd_aspace;
 struct gfs2_rgrpd *rgd = gfs2_glock2rgrp(gl);

 if (rgd)
  gfs2_rgrp_brelse(rgd);

 WARN_ON_ONCE(!(flags & DIO_METADATA));
 gfs2_assert_withdraw(sdp, !atomic_read(&gl->gl_ail_count));
 truncate_inode_pages_range(mapping, gl->gl_vm.start, gl->gl_vm.end);

 if (rgd)
  rgd->rd_flags &= ~GFS2_RDF_UPTODATE;
}
