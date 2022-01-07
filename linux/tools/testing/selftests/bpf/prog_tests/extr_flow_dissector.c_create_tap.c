
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_flags; int ifr_name; } ;


 int IFF_NAPI ;
 int IFF_NAPI_FRAGS ;
 int IFF_NO_PI ;
 int IFF_TAP ;
 int O_RDWR ;
 int TUNSETIFF ;
 int ioctl (int,int ,struct ifreq*) ;
 int open (char*,int ) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static int create_tap(const char *ifname)
{
 struct ifreq ifr = {
  .ifr_flags = IFF_TAP | IFF_NO_PI | IFF_NAPI | IFF_NAPI_FRAGS,
 };
 int fd, ret;

 strncpy(ifr.ifr_name, ifname, sizeof(ifr.ifr_name));

 fd = open("/dev/net/tun", O_RDWR);
 if (fd < 0)
  return -1;

 ret = ioctl(fd, TUNSETIFF, &ifr);
 if (ret)
  return -1;

 return fd;
}
