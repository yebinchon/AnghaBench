
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {char* sd_fsname; } ;
struct gfs2_rgrpd {scalar_t__ rd_addr; int rd_gl; struct gfs2_sbd* rd_sbd; } ;


 int gfs2_lm_withdraw (struct gfs2_sbd*,char*,unsigned long long,char const*,char*,unsigned int) ;
 int gfs2_rgrp_dump (int *,int ,char*) ;
 int sprintf (char*,char*,char*) ;

int gfs2_consist_rgrpd_i(struct gfs2_rgrpd *rgd, int cluster_wide,
    const char *function, char *file, unsigned int line)
{
 struct gfs2_sbd *sdp = rgd->rd_sbd;
 char fs_id_buf[sizeof(sdp->sd_fsname) + 7];
 int rv;

 sprintf(fs_id_buf, "fsid=%s: ", sdp->sd_fsname);
 gfs2_rgrp_dump(((void*)0), rgd->rd_gl, fs_id_buf);
 rv = gfs2_lm_withdraw(sdp,
         "fatal: filesystem consistency error\n"
         "  RG = %llu\n"
         "  function = %s, file = %s, line = %u\n",
         (unsigned long long)rgd->rd_addr,
         function, file, line);
 return rv;
}
