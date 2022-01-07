
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_4__ {int gt_logd_secs; int gt_statfs_quantum; int gt_quota_quantum; scalar_t__ gt_statfs_slow; } ;
struct gfs2_args {int ar_quota; int ar_data; char const* ar_statfs_percent; int ar_errors; scalar_t__ ar_loccookie; scalar_t__ ar_rgrplvb; scalar_t__ ar_discard; scalar_t__ ar_suiddir; scalar_t__ ar_posix_acl; scalar_t__ ar_debug; scalar_t__ ar_localflocks; scalar_t__ ar_spectator; scalar_t__* ar_hostdata; scalar_t__* ar_locktable; scalar_t__* ar_lockproto; } ;
struct gfs2_sbd {int sd_flags; TYPE_2__ sd_tune; int sd_master_dir; struct gfs2_args sd_args; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_3__ {struct gfs2_sbd* s_fs_info; } ;


 int GFS2_DATA_DEFAULT ;


 int GFS2_ERRORS_DEFAULT ;



 int GFS2_QUOTA_DEFAULT ;


 int SDF_DEMOTE ;
 int SDF_NOBARRIERS ;
 scalar_t__ is_ancestor (struct dentry*,int ) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_puts (struct seq_file*,char*) ;
 int seq_show_option (struct seq_file*,char*,scalar_t__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int gfs2_show_options(struct seq_file *s, struct dentry *root)
{
 struct gfs2_sbd *sdp = root->d_sb->s_fs_info;
 struct gfs2_args *args = &sdp->sd_args;
 int val;

 if (is_ancestor(root, sdp->sd_master_dir))
  seq_puts(s, ",meta");
 if (args->ar_lockproto[0])
  seq_show_option(s, "lockproto", args->ar_lockproto);
 if (args->ar_locktable[0])
  seq_show_option(s, "locktable", args->ar_locktable);
 if (args->ar_hostdata[0])
  seq_show_option(s, "hostdata", args->ar_hostdata);
 if (args->ar_spectator)
  seq_puts(s, ",spectator");
 if (args->ar_localflocks)
  seq_puts(s, ",localflocks");
 if (args->ar_debug)
  seq_puts(s, ",debug");
 if (args->ar_posix_acl)
  seq_puts(s, ",acl");
 if (args->ar_quota != GFS2_QUOTA_DEFAULT) {
  char *state;
  switch (args->ar_quota) {
  case 129:
   state = "off";
   break;
  case 130:
   state = "account";
   break;
  case 128:
   state = "on";
   break;
  default:
   state = "unknown";
   break;
  }
  seq_printf(s, ",quota=%s", state);
 }
 if (args->ar_suiddir)
  seq_puts(s, ",suiddir");
 if (args->ar_data != GFS2_DATA_DEFAULT) {
  char *state;
  switch (args->ar_data) {
  case 133:
   state = "writeback";
   break;
  case 134:
   state = "ordered";
   break;
  default:
   state = "unknown";
   break;
  }
  seq_printf(s, ",data=%s", state);
 }
 if (args->ar_discard)
  seq_puts(s, ",discard");
 val = sdp->sd_tune.gt_logd_secs;
 if (val != 30)
  seq_printf(s, ",commit=%d", val);
 val = sdp->sd_tune.gt_statfs_quantum;
 if (val != 30)
  seq_printf(s, ",statfs_quantum=%d", val);
 else if (sdp->sd_tune.gt_statfs_slow)
  seq_puts(s, ",statfs_quantum=0");
 val = sdp->sd_tune.gt_quota_quantum;
 if (val != 60)
  seq_printf(s, ",quota_quantum=%d", val);
 if (args->ar_statfs_percent)
  seq_printf(s, ",statfs_percent=%d", args->ar_statfs_percent);
 if (args->ar_errors != GFS2_ERRORS_DEFAULT) {
  const char *state;

  switch (args->ar_errors) {
  case 131:
   state = "withdraw";
   break;
  case 132:
   state = "panic";
   break;
  default:
   state = "unknown";
   break;
  }
  seq_printf(s, ",errors=%s", state);
 }
 if (test_bit(SDF_NOBARRIERS, &sdp->sd_flags))
  seq_puts(s, ",nobarrier");
 if (test_bit(SDF_DEMOTE, &sdp->sd_flags))
  seq_puts(s, ",demote_interface_used");
 if (args->ar_rgrplvb)
  seq_puts(s, ",rgrplvb");
 if (args->ar_loccookie)
  seq_puts(s, ",loccookie");
 return 0;
}
