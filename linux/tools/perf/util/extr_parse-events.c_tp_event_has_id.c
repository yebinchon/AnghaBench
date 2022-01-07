
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;


 int EINVAL ;
 int MAXPATHLEN ;
 int O_RDONLY ;
 int close (int) ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,char const*,char*) ;

__attribute__((used)) static int tp_event_has_id(const char *dir_path, struct dirent *evt_dir)
{
 char evt_path[MAXPATHLEN];
 int fd;

 snprintf(evt_path, MAXPATHLEN, "%s/%s/id", dir_path, evt_dir->d_name);
 fd = open(evt_path, O_RDONLY);
 if (fd < 0)
  return -EINVAL;
 close(fd);

 return 0;
}
