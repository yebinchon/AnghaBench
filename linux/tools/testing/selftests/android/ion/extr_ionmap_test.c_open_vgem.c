
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 scalar_t__ check_vgem (int) ;
 int close (int) ;
 int open (char*,int ) ;
 int sprintf (char*,char*,char const*,int) ;

int open_vgem(void)
{
 int i, fd;
 const char *drmstr = "/dev/dri/card";

 fd = -1;
 for (i = 0; i < 16; i++) {
  char name[80];

  sprintf(name, "%s%u", drmstr, i);

  fd = open(name, O_RDWR);
  if (fd < 0)
   continue;

  if (check_vgem(fd)) {
   close(fd);
   continue;
  } else {
   break;
  }

 }
 return fd;
}
