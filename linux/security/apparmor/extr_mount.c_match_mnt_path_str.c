
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dummy; } ;
struct TYPE_2__ {int * start; int dfa; } ;
struct aa_profile {TYPE_1__ policy; int disconnected; } ;
struct aa_perms {int dummy; } ;


 int AA_BUG (int) ;
 size_t AA_CLASS_MOUNT ;
 int AA_MAY_MOUNT ;
 int EACCES ;
 scalar_t__ IS_ERR (char const*) ;
 int OP_MOUNT ;
 int PROFILE_MEDIATES (struct aa_profile*,size_t) ;
 int PTR_ERR (char const*) ;
 int aa_path_name (struct path const*,int ,char*,char const**,char const**,int ) ;
 int audit_mount (struct aa_profile*,int ,char const*,char const*,char const*,int *,unsigned long,void*,int ,struct aa_perms*,char const*,int) ;
 int do_match_mnt (int ,int ,char const*,char const*,char const*,unsigned long,void*,int,struct aa_perms*) ;
 char** mnt_info_table ;
 int path_flags (struct aa_profile*,struct path const*) ;

__attribute__((used)) static int match_mnt_path_str(struct aa_profile *profile,
         const struct path *mntpath, char *buffer,
         const char *devname, const char *type,
         unsigned long flags, void *data, bool binary,
         const char *devinfo)
{
 struct aa_perms perms = { };
 const char *mntpnt = ((void*)0), *info = ((void*)0);
 int pos, error;

 AA_BUG(!profile);
 AA_BUG(!mntpath);
 AA_BUG(!buffer);

 if (!PROFILE_MEDIATES(profile, AA_CLASS_MOUNT))
  return 0;

 error = aa_path_name(mntpath, path_flags(profile, mntpath), buffer,
        &mntpnt, &info, profile->disconnected);
 if (error)
  goto audit;
 if (IS_ERR(devname)) {
  error = PTR_ERR(devname);
  devname = ((void*)0);
  info = devinfo;
  goto audit;
 }

 error = -EACCES;
 pos = do_match_mnt(profile->policy.dfa,
      profile->policy.start[AA_CLASS_MOUNT],
      mntpnt, devname, type, flags, data, binary, &perms);
 if (pos) {
  info = mnt_info_table[pos];
  goto audit;
 }
 error = 0;

audit:
 return audit_mount(profile, OP_MOUNT, mntpnt, devname, type, ((void*)0),
      flags, data, AA_MAY_MOUNT, &perms, info, error);
}
