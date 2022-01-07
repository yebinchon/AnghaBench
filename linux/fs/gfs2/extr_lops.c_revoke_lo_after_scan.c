
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;
struct gfs2_jdesc {int jd_found_revokes; int jd_jid; int jd_inode; } ;


 struct gfs2_sbd* GFS2_SB (int ) ;
 int fs_info (struct gfs2_sbd*,char*,int ,int ) ;
 int gfs2_revoke_clean (struct gfs2_jdesc*) ;

__attribute__((used)) static void revoke_lo_after_scan(struct gfs2_jdesc *jd, int error, int pass)
{
 struct gfs2_sbd *sdp = GFS2_SB(jd->jd_inode);

 if (error) {
  gfs2_revoke_clean(jd);
  return;
 }
 if (pass != 1)
  return;

 fs_info(sdp, "jid=%u: Found %u revoke tags\n",
         jd->jd_jid, jd->jd_found_revokes);

 gfs2_revoke_clean(jd);
}
