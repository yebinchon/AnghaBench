
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_ifindex; int ifr_name; } ;
typedef int ifdata ;


 int IPPROTO_IP ;
 int PF_INET ;
 int SIOCGIFINDEX ;
 int SOCK_DGRAM ;
 int close (int) ;
 int ioctl (int,int ,char*) ;
 int log_err_errno (char*) ;
 int memset (struct ifreq*,int ,int) ;
 int socket (int ,int ,int ) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static int get_ifidx(const char *ifname)
{
 struct ifreq ifdata;
 int sd, rc;

 if (!ifname || *ifname == '\0')
  return -1;

 memset(&ifdata, 0, sizeof(ifdata));

 strcpy(ifdata.ifr_name, ifname);

 sd = socket(PF_INET, SOCK_DGRAM, IPPROTO_IP);
 if (sd < 0) {
  log_err_errno("socket failed");
  return -1;
 }

 rc = ioctl(sd, SIOCGIFINDEX, (char *)&ifdata);
 close(sd);
 if (rc != 0) {
  log_err_errno("ioctl(SIOCGIFINDEX) failed");
  return -1;
 }

 return ifdata.ifr_ifindex;
}
