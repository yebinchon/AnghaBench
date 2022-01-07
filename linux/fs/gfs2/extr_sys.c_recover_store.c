
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_flags; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ESHUTDOWN ;
 int SDF_NORECOVERY ;
 int gfs2_recover_set (struct gfs2_sbd*,unsigned int) ;
 int sscanf (char const*,char*,unsigned int*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static ssize_t recover_store(struct gfs2_sbd *sdp, const char *buf, size_t len)
{
 unsigned jid;
 int rv;

 rv = sscanf(buf, "%u", &jid);
 if (rv != 1)
  return -EINVAL;

 if (test_bit(SDF_NORECOVERY, &sdp->sd_flags)) {
  rv = -ESHUTDOWN;
  goto out;
 }

 rv = gfs2_recover_set(sdp, jid);
out:
 return rv ? rv : len;
}
