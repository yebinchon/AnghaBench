
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;


 char* MICSYSFSDIR ;
 int O_RDONLY ;
 int PAGE_SIZE ;
 int PATH_MAX ;
 int close (int) ;
 int errno ;
 char* malloc (scalar_t__) ;
 int mpsslog (char*,char*,int ) ;
 int open (char*,int ) ;
 int read (int,char*,int) ;
 int snprintf (char*,int,char*,char*,char*,...) ;
 int strcpy (char*,char*) ;
 int strerror (int ) ;
 scalar_t__ strlen (char*) ;

char *
readsysfs(char *dir, char *entry)
{
 char filename[PATH_MAX];
 char value[PAGE_SIZE];
 char *string = ((void*)0);
 int fd;
 int len;

 if (dir == ((void*)0))
  snprintf(filename, PATH_MAX, "%s/%s", MICSYSFSDIR, entry);
 else
  snprintf(filename, PATH_MAX,
    "%s/%s/%s", MICSYSFSDIR, dir, entry);

 fd = open(filename, O_RDONLY);
 if (fd < 0) {
  mpsslog("Failed to open sysfs entry '%s': %s\n",
   filename, strerror(errno));
  return ((void*)0);
 }

 len = read(fd, value, sizeof(value));
 if (len < 0) {
  mpsslog("Failed to read sysfs entry '%s': %s\n",
   filename, strerror(errno));
  goto readsys_ret;
 }
 if (len == 0)
  goto readsys_ret;

 value[len - 1] = '\0';

 string = malloc(strlen(value) + 1);
 if (string)
  strcpy(string, value);

readsys_ret:
 close(fd);
 return string;
}
