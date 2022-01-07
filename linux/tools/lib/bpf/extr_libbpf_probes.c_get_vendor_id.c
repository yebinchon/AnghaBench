
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int path ;
typedef int buf ;


 int IF_NAMESIZE ;
 int O_RDONLY ;
 int close (int) ;
 int if_indextoname (int,char*) ;
 int open (char*,int ) ;
 size_t read (int,char*,int) ;
 int snprintf (char*,int,char*,char*) ;
 int strtol (char*,int *,int ) ;

__attribute__((used)) static int get_vendor_id(int ifindex)
{
 char ifname[IF_NAMESIZE], path[64], buf[8];
 ssize_t len;
 int fd;

 if (!if_indextoname(ifindex, ifname))
  return -1;

 snprintf(path, sizeof(path), "/sys/class/net/%s/device/vendor", ifname);

 fd = open(path, O_RDONLY);
 if (fd < 0)
  return -1;

 len = read(fd, buf, sizeof(buf));
 close(fd);
 if (len < 0)
  return -1;
 if (len >= (ssize_t)sizeof(buf))
  return -1;
 buf[len] = '\0';

 return strtol(buf, ((void*)0), 0);
}
