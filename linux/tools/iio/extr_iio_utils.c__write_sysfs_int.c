
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
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int fscanf (int *,char*,int*) ;
 char* malloc (scalar_t__) ;
 int perror (char*) ;
 int sprintf (char*,char*,char const*,char const*) ;
 int stderr ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int _write_sysfs_int(const char *filename, const char *basedir, int val,
       int verify)
{
 int ret = 0;
 FILE *sysfsfp;
 int test;
 char *temp = malloc(strlen(basedir) + strlen(filename) + 2);

 if (!temp)
  return -ENOMEM;

 ret = sprintf(temp, "%s/%s", basedir, filename);
 if (ret < 0)
  goto error_free;

 sysfsfp = fopen(temp, "w");
 if (!sysfsfp) {
  ret = -errno;
  fprintf(stderr, "failed to open %s\n", temp);
  goto error_free;
 }

 ret = fprintf(sysfsfp, "%d", val);
 if (ret < 0) {
  if (fclose(sysfsfp))
   perror("_write_sysfs_int(): Failed to close dir");

  goto error_free;
 }

 if (fclose(sysfsfp)) {
  ret = -errno;
  goto error_free;
 }

 if (verify) {
  sysfsfp = fopen(temp, "r");
  if (!sysfsfp) {
   ret = -errno;
   fprintf(stderr, "failed to open %s\n", temp);
   goto error_free;
  }

  if (fscanf(sysfsfp, "%d", &test) != 1) {
   ret = errno ? -errno : -ENODATA;
   if (fclose(sysfsfp))
    perror("_write_sysfs_int(): Failed to close dir");

   goto error_free;
  }

  if (fclose(sysfsfp)) {
   ret = -errno;
   goto error_free;
  }

  if (test != val) {
   fprintf(stderr,
    "Possible failure in int write %d to %s/%s\n",
    val, basedir, filename);
   ret = -1;
  }
 }

error_free:
 free(temp);
 return ret;
}
