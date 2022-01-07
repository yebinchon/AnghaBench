
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* MICSYSFSDIR ;
 int O_RDWR ;
 int PATH_MAX ;
 int close (int) ;
 int errno ;
 int free (char*) ;
 int mpsslog (char*,char*,int ) ;
 int open (char*,int ) ;
 char* readsysfs (char*,char*) ;
 int snprintf (char*,int,char*,char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strerror (int) ;
 int strlen (char*) ;
 scalar_t__ write (int,char*,int ) ;

int
setsysfs(char *dir, char *entry, char *value)
{
 char filename[PATH_MAX];
 char *oldvalue;
 int fd, ret = 0;

 if (dir == ((void*)0))
  snprintf(filename, PATH_MAX, "%s/%s", MICSYSFSDIR, entry);
 else
  snprintf(filename, PATH_MAX, "%s/%s/%s",
    MICSYSFSDIR, dir, entry);

 oldvalue = readsysfs(dir, entry);

 fd = open(filename, O_RDWR);
 if (fd < 0) {
  ret = errno;
  mpsslog("Failed to open sysfs entry '%s': %s\n",
   filename, strerror(errno));
  goto done;
 }

 if (!oldvalue || strcmp(value, oldvalue)) {
  if (write(fd, value, strlen(value)) < 0) {
   ret = errno;
   mpsslog("Failed to write new sysfs entry '%s': %s\n",
    filename, strerror(errno));
  }
 }
 close(fd);
done:
 if (oldvalue)
  free(oldvalue);
 return ret;
}
