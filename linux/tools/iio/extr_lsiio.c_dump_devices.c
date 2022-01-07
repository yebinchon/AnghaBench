
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef int DIR ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ VERBLEVEL_SENSORS ;
 scalar_t__ asprintf (char**,char*,int ,int ) ;
 scalar_t__ check_prefix (int ,int ) ;
 int closedir (int *) ;
 int dump_one_device (char*) ;
 int dump_one_trigger (char*) ;
 int errno ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int iio_dir ;
 int * opendir (int ) ;
 int perror (char*) ;
 int printf (char*) ;
 struct dirent* readdir (int *) ;
 int rewinddir (int *) ;
 int stderr ;
 int type_device ;
 int type_trigger ;
 scalar_t__ verblevel ;

__attribute__((used)) static int dump_devices(void)
{
 const struct dirent *ent;
 int ret;
 DIR *dp;

 dp = opendir(iio_dir);
 if (!dp) {
  fprintf(stderr, "No industrial I/O devices available\n");
  return -ENODEV;
 }

 while (ent = readdir(dp), ent) {
  if (check_prefix(ent->d_name, type_device)) {
   char *dev_dir_name;

   if (asprintf(&dev_dir_name, "%s%s", iio_dir,
         ent->d_name) < 0) {
    ret = -ENOMEM;
    goto error_close_dir;
   }

   ret = dump_one_device(dev_dir_name);
   if (ret) {
    free(dev_dir_name);
    goto error_close_dir;
   }

   free(dev_dir_name);
   if (verblevel >= VERBLEVEL_SENSORS)
    printf("\n");
  }
 }
 rewinddir(dp);
 while (ent = readdir(dp), ent) {
  if (check_prefix(ent->d_name, type_trigger)) {
   char *dev_dir_name;

   if (asprintf(&dev_dir_name, "%s%s", iio_dir,
         ent->d_name) < 0) {
    ret = -ENOMEM;
    goto error_close_dir;
   }

   ret = dump_one_trigger(dev_dir_name);
   if (ret) {
    free(dev_dir_name);
    goto error_close_dir;
   }

   free(dev_dir_name);
  }
 }

 return (closedir(dp) == -1) ? -errno : 0;

error_close_dir:
 if (closedir(dp) == -1)
  perror("dump_devices(): Failed to close directory");

 return ret;
}
