
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ENODATA ;
 int ENOMEM ;
 int errno ;
 scalar_t__ fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int fscanf (int *,char*,float*) ;
 char* malloc (scalar_t__) ;
 int perror (char*) ;
 int sprintf (char*,char*,char const*,char const*) ;
 int stderr ;
 scalar_t__ strlen (char const*) ;

int read_sysfs_float(const char *filename, const char *basedir, float *val)
{
 int ret = 0;
 FILE *sysfsfp;
 char *temp = malloc(strlen(basedir) + strlen(filename) + 2);

 if (!temp) {
  fprintf(stderr, "Memory allocation failed");
  return -ENOMEM;
 }

 ret = sprintf(temp, "%s/%s", basedir, filename);
 if (ret < 0)
  goto error_free;

 sysfsfp = fopen(temp, "r");
 if (!sysfsfp) {
  ret = -errno;
  goto error_free;
 }

 errno = 0;
 if (fscanf(sysfsfp, "%f\n", val) != 1) {
  ret = errno ? -errno : -ENODATA;
  if (fclose(sysfsfp))
   perror("read_sysfs_float(): Failed to close dir");

  goto error_free;
 }

 if (fclose(sysfsfp))
  ret = -errno;

error_free:
 free(temp);

 return ret;
}
