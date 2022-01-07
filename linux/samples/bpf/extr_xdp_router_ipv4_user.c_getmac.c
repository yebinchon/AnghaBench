
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* sa_data; } ;
struct TYPE_4__ {int sa_family; } ;
struct ifreq {TYPE_1__ ifr_hwaddr; int ifr_name; TYPE_2__ ifr_addr; } ;
typedef scalar_t__ __u8 ;
typedef int __be64 ;


 int AF_INET ;
 scalar_t__ IFNAMSIZ ;
 int SIOCGIFHWADDR ;
 int SOCK_DGRAM ;
 int close (int) ;
 scalar_t__ ioctl (int,int ,struct ifreq*) ;
 int printf (char*) ;
 int socket (int ,int ,int ) ;
 int strncpy (int ,char*,scalar_t__) ;

__attribute__((used)) static __be64 getmac(char *iface)
{
 struct ifreq ifr;
 __be64 mac = 0;
 int fd, i;

 fd = socket(AF_INET, SOCK_DGRAM, 0);
 ifr.ifr_addr.sa_family = AF_INET;
 strncpy(ifr.ifr_name, iface, IFNAMSIZ - 1);
 if (ioctl(fd, SIOCGIFHWADDR, &ifr) < 0) {
  printf("ioctl failed leaving....\n");
  return -1;
 }
 for (i = 0; i < 6 ; i++)
  *((__u8 *)&mac + i) = (__u8)ifr.ifr_hwaddr.sa_data[i];
 close(fd);
 return mac;
}
