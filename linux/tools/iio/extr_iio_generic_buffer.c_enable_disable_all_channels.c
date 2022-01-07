
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int scanelemdir ;
typedef int DIR ;


 int EIO ;
 int ENOENT ;
 char* FORMAT_SCAN_ELEMENTS_DIR ;
 int closedir (int *) ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ iioutils_check_suffix (char*,char*) ;
 int * opendir (char*) ;
 int perror (char*) ;
 int printf (char*,char*,char*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 int write_sysfs_int (char*,char*,int) ;

__attribute__((used)) static int enable_disable_all_channels(char *dev_dir_name, int enable)
{
 const struct dirent *ent;
 char scanelemdir[256];
 DIR *dp;
 int ret;

 snprintf(scanelemdir, sizeof(scanelemdir),
   FORMAT_SCAN_ELEMENTS_DIR, dev_dir_name);
 scanelemdir[sizeof(scanelemdir)-1] = '\0';

 dp = opendir(scanelemdir);
 if (!dp) {
  fprintf(stderr, "Enabling/disabling channels: can't open %s\n",
   scanelemdir);
  return -EIO;
 }

 ret = -ENOENT;
 while (ent = readdir(dp), ent) {
  if (iioutils_check_suffix(ent->d_name, "_en")) {
   printf("%sabling: %s\n",
          enable ? "En" : "Dis",
          ent->d_name);
   ret = write_sysfs_int(ent->d_name, scanelemdir,
           enable);
   if (ret < 0)
    fprintf(stderr, "Failed to enable/disable %s\n",
     ent->d_name);
  }
 }

 if (closedir(dp) == -1) {
  perror("Enabling/disabling channels: "
         "Failed to close directory");
  return -errno;
 }
 return 0;
}
