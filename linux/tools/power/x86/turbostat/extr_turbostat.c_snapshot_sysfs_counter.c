
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int err (int,char*,char*) ;
 int fclose (int *) ;
 int * fopen_or_die (char*,char*) ;
 int fscanf (int *,char*,unsigned long long*) ;

unsigned long long snapshot_sysfs_counter(char *path)
{
 FILE *fp;
 int retval;
 unsigned long long counter;

 fp = fopen_or_die(path, "r");

 retval = fscanf(fp, "%lld", &counter);
 if (retval != 1)
  err(1, "snapshot_sysfs_counter(%s)", path);

 fclose(fp);

 return counter;
}
