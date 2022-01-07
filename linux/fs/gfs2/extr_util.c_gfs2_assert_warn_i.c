
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ar_errors; scalar_t__ ar_debug; } ;
struct gfs2_sbd {scalar_t__ sd_last_warning; int sd_fsname; TYPE_1__ sd_args; } ;


 int BUG () ;
 scalar_t__ GFS2_ERRORS_PANIC ;
 scalar_t__ GFS2_ERRORS_WITHDRAW ;
 int HZ ;
 int dump_stack () ;
 int fs_warn (struct gfs2_sbd*,char*,char*,char const*,char*,unsigned int) ;
 int gfs2_tune_get (struct gfs2_sbd*,int ) ;
 int gt_complain_secs ;
 scalar_t__ jiffies ;
 int panic (char*,int ,char*,int ,char const*,char*,unsigned int) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

int gfs2_assert_warn_i(struct gfs2_sbd *sdp, char *assertion,
         const char *function, char *file, unsigned int line)
{
 if (time_before(jiffies,
   sdp->sd_last_warning +
   gfs2_tune_get(sdp, gt_complain_secs) * HZ))
  return -2;

 if (sdp->sd_args.ar_errors == GFS2_ERRORS_WITHDRAW)
  fs_warn(sdp, "warning: assertion \"%s\" failed at function = %s, file = %s, line = %u\n",
   assertion, function, file, line);

 if (sdp->sd_args.ar_debug)
  BUG();
 else
  dump_stack();

 if (sdp->sd_args.ar_errors == GFS2_ERRORS_PANIC)
  panic("GFS2: fsid=%s: warning: assertion \"%s\" failed\n"
        "GFS2: fsid=%s:   function = %s, file = %s, line = %u\n",
        sdp->sd_fsname, assertion,
        sdp->sd_fsname, function, file, line);

 sdp->sd_last_warning = jiffies;

 return -1;
}
