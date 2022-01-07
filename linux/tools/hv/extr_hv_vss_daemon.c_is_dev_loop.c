
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int DIR ;


 scalar_t__ ENOENT ;
 int LOG_ERR ;
 int PATH_MAX ;
 int R_OK ;
 int X_OK ;
 int access (char*,int) ;
 int closedir (int *) ;
 scalar_t__ errno ;
 int exit (int) ;
 int free (char*) ;
 char* malloc (int ) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int ,char*,char const*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strerror (scalar_t__) ;
 int syslog (int ,char*,...) ;

__attribute__((used)) static bool is_dev_loop(const char *blkname)
{
 char *buffer;
 DIR *dir;
 struct dirent *entry;
 bool ret = 0;

 buffer = malloc(PATH_MAX);
 if (!buffer) {
  syslog(LOG_ERR, "Can't allocate memory!");
  exit(1);
 }

 snprintf(buffer, PATH_MAX, "%s/loop", blkname);
 if (!access(buffer, R_OK | X_OK)) {
  ret = 1;
  goto free_buffer;
 } else if (errno != ENOENT) {
  syslog(LOG_ERR, "Can't access: %s; error:%d %s!",
         buffer, errno, strerror(errno));
 }

 snprintf(buffer, PATH_MAX, "%s/slaves", blkname);
 dir = opendir(buffer);
 if (!dir) {
  if (errno != ENOENT)
   syslog(LOG_ERR, "Can't opendir: %s; error:%d %s!",
          buffer, errno, strerror(errno));
  goto free_buffer;
 }

 while ((entry = readdir(dir)) != ((void*)0)) {
  if (strcmp(entry->d_name, ".") == 0 ||
      strcmp(entry->d_name, "..") == 0)
   continue;

  snprintf(buffer, PATH_MAX, "%s/slaves/%s", blkname,
    entry->d_name);
  if (is_dev_loop(buffer)) {
   ret = 1;
   break;
  }
 }
 closedir(dir);
free_buffer:
 free(buffer);
 return ret;
}
