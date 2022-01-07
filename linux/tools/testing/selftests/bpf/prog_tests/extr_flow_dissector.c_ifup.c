
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_flags; int ifr_name; } ;


 int IFF_UP ;
 int PF_INET ;
 int SIOCGIFFLAGS ;
 int SIOCSIFFLAGS ;
 int SOCK_DGRAM ;
 int close (int) ;
 int ioctl (int,int ,struct ifreq*) ;
 int socket (int ,int ,int ) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static int ifup(const char *ifname)
{
 struct ifreq ifr = {};
 int sk, ret;

 strncpy(ifr.ifr_name, ifname, sizeof(ifr.ifr_name));

 sk = socket(PF_INET, SOCK_DGRAM, 0);
 if (sk < 0)
  return -1;

 ret = ioctl(sk, SIOCGIFFLAGS, &ifr);
 if (ret) {
  close(sk);
  return -1;
 }

 ifr.ifr_flags |= IFF_UP;
 ret = ioctl(sk, SIOCSIFFLAGS, &ifr);
 if (ret) {
  close(sk);
  return -1;
 }

 close(sk);
 return 0;
}
