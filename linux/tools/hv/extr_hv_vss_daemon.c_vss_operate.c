
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_rdev; } ;
struct mntent {char* mnt_type; char* mnt_dir; int mnt_fsname; } ;
typedef int errdir ;
typedef int FILE ;


 unsigned int FIFREEZE ;
 unsigned int FITHAW ;
 int LOG_ERR ;
 int MNTOPT_RO ;


 int endmntent (int *) ;
 int errno ;
 struct mntent* getmntent (int *) ;
 int * hasmntopt (struct mntent*,int ) ;
 scalar_t__ is_dev_loop (char*) ;
 int major (int ) ;
 int minor (int ) ;
 int * setmntent (char*,char*) ;
 int sprintf (char*,char*,int,int) ;
 scalar_t__ stat (int ,struct stat*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strerror (int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (int ,char*,int ) ;
 int strncpy (char*,char*,int) ;
 int syslog (int ,char*,...) ;
 int vss_do_freeze (char*,unsigned int) ;

__attribute__((used)) static int vss_operate(int operation)
{
 char match[] = "/dev/";
 FILE *mounts;
 struct mntent *ent;
 struct stat sb;
 char errdir[1024] = {0};
 char blkdir[23];
 unsigned int cmd;
 int error = 0, root_seen = 0, save_errno = 0;

 switch (operation) {
 case 129:
  cmd = FIFREEZE;
  break;
 case 128:
  cmd = FITHAW;
  break;
 default:
  return -1;
 }

 mounts = setmntent("/proc/mounts", "r");
 if (mounts == ((void*)0))
  return -1;

 while ((ent = getmntent(mounts))) {
  if (strncmp(ent->mnt_fsname, match, strlen(match)))
   continue;
  if (stat(ent->mnt_fsname, &sb)) {
   syslog(LOG_ERR, "Can't stat: %s; error:%d %s!",
          ent->mnt_fsname, errno, strerror(errno));
  } else {
   sprintf(blkdir, "/sys/dev/block/%d:%d",
    major(sb.st_rdev), minor(sb.st_rdev));
   if (is_dev_loop(blkdir))
    continue;
  }
  if (hasmntopt(ent, MNTOPT_RO) != ((void*)0))
   continue;
  if (strcmp(ent->mnt_type, "vfat") == 0)
   continue;
  if (strcmp(ent->mnt_dir, "/") == 0) {
   root_seen = 1;
   continue;
  }
  error |= vss_do_freeze(ent->mnt_dir, cmd);
  if (error && operation == 129)
   goto err;
 }

 endmntent(mounts);

 if (root_seen) {
  error |= vss_do_freeze("/", cmd);
  if (error && operation == 129)
   goto err;
 }

 goto out;
err:
 save_errno = errno;
 if (ent) {
  strncpy(errdir, ent->mnt_dir, sizeof(errdir)-1);
  endmntent(mounts);
 }
 vss_operate(128);

 if (ent)
  syslog(LOG_ERR, "FREEZE of %s failed; error:%d %s",
         errdir, save_errno, strerror(save_errno));
 else
  syslog(LOG_ERR, "FREEZE of / failed; error:%d %s", save_errno,
         strerror(save_errno));
out:
 return error;
}
