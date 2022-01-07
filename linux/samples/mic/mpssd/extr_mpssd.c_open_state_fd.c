
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_info {char* name; } ;


 char* MICSYSFSDIR ;
 int O_RDONLY ;
 int PATH_MAX ;
 int errno ;
 int mpsslog (char*,char*,char*,int ) ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,char*,char*,char*) ;
 int strerror (int ) ;

__attribute__((used)) static int open_state_fd(struct mic_info *mic)
{
 char pathname[PATH_MAX];
 int fd;

 snprintf(pathname, PATH_MAX - 1, "%s/%s/%s",
   MICSYSFSDIR, mic->name, "state");

 fd = open(pathname, O_RDONLY);
 if (fd < 0)
  mpsslog("%s: opening file %s failed %s\n",
   mic->name, pathname, strerror(errno));
 return fd;
}
