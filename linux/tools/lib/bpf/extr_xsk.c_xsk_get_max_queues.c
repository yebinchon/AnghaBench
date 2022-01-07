
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_socket {int ifname; } ;
struct ifreq {char* ifr_name; void* ifr_data; } ;
struct ethtool_channels {int max_combined; int cmd; } ;


 int AF_INET ;
 int EOPNOTSUPP ;
 int ETHTOOL_GCHANNELS ;
 int IFNAMSIZ ;
 int SIOCETHTOOL ;
 int SOCK_DGRAM ;
 int close (int) ;
 int errno ;
 int ioctl (int,int ,struct ifreq*) ;
 int memcpy (char*,int ,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int xsk_get_max_queues(struct xsk_socket *xsk)
{
 struct ethtool_channels channels = { .cmd = ETHTOOL_GCHANNELS };
 struct ifreq ifr = {};
 int fd, err, ret;

 fd = socket(AF_INET, SOCK_DGRAM, 0);
 if (fd < 0)
  return -errno;

 ifr.ifr_data = (void *)&channels;
 memcpy(ifr.ifr_name, xsk->ifname, IFNAMSIZ - 1);
 ifr.ifr_name[IFNAMSIZ - 1] = '\0';
 err = ioctl(fd, SIOCETHTOOL, &ifr);
 if (err && errno != EOPNOTSUPP) {
  ret = -errno;
  goto out;
 }

 if (err || channels.max_combined == 0)



  ret = 1;
 else
  ret = channels.max_combined;

out:
 close(fd);
 return ret;
}
