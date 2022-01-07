
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char const* d_name; } ;
typedef int FILE ;
typedef int DIR ;


 int ENODATA ;
 int ENOENT ;
 int ENOMEM ;
 int asprintf (char**,char*,char const*,char const*) ;
 int closedir (int *) ;
 int errno ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int fscanf (int *,char*,float*) ;
 int * opendir (char const*) ;
 int perror (char*) ;
 struct dirent* readdir (int *) ;
 scalar_t__ strcmp (char*,char const*) ;

int iioutils_get_param_float(float *output, const char *param_name,
        const char *device_dir, const char *name,
        const char *generic_name)
{
 FILE *sysfsfp;
 int ret;
 DIR *dp;
 char *builtname, *builtname_generic;
 char *filename = ((void*)0);
 const struct dirent *ent;

 ret = asprintf(&builtname, "%s_%s", name, param_name);
 if (ret < 0)
  return -ENOMEM;

 ret = asprintf(&builtname_generic,
         "%s_%s", generic_name, param_name);
 if (ret < 0) {
  ret = -ENOMEM;
  goto error_free_builtname;
 }

 dp = opendir(device_dir);
 if (!dp) {
  ret = -errno;
  goto error_free_builtname_generic;
 }

 ret = -ENOENT;
 while (ent = readdir(dp), ent)
  if ((strcmp(builtname, ent->d_name) == 0) ||
      (strcmp(builtname_generic, ent->d_name) == 0)) {
   ret = asprintf(&filename,
           "%s/%s", device_dir, ent->d_name);
   if (ret < 0) {
    ret = -ENOMEM;
    goto error_closedir;
   }

   sysfsfp = fopen(filename, "r");
   if (!sysfsfp) {
    ret = -errno;
    goto error_free_filename;
   }

   errno = 0;
   if (fscanf(sysfsfp, "%f", output) != 1)
    ret = errno ? -errno : -ENODATA;

   break;
  }
error_free_filename:
 if (filename)
  free(filename);

error_closedir:
 if (closedir(dp) == -1)
  perror("iioutils_get_param_float(): Failed to close directory");

error_free_builtname_generic:
 free(builtname_generic);
error_free_builtname:
 free(builtname);

 return ret;
}
