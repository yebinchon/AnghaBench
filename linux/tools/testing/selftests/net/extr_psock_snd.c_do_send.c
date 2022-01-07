
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_net_hdr {int dummy; } ;
struct sockaddr_ll {int sll_ifindex; int sll_protocol; int member_0; } ;
typedef int laddr ;


 scalar_t__ ETH_HLEN ;
 int ETH_P_IP ;
 int cfg_ifname ;
 scalar_t__ cfg_use_bind ;
 scalar_t__ cfg_use_dgram ;
 int cfg_use_vnet ;
 int errno ;
 int error (int,int ,char*,...) ;
 int fprintf (int ,char*,int) ;
 int htons (int ) ;
 int if_nametoindex (int ) ;
 int sendto (int,char*,int,int ,void*,int) ;
 int stderr ;
 int write (int,char*,int) ;

__attribute__((used)) static void do_send(int fd, char *buf, int len)
{
 int ret;

 if (!cfg_use_vnet) {
  buf += sizeof(struct virtio_net_hdr);
  len -= sizeof(struct virtio_net_hdr);
 }
 if (cfg_use_dgram) {
  buf += ETH_HLEN;
  len -= ETH_HLEN;
 }

 if (cfg_use_bind) {
  ret = write(fd, buf, len);
 } else {
  struct sockaddr_ll laddr = {0};

  laddr.sll_protocol = htons(ETH_P_IP);
  laddr.sll_ifindex = if_nametoindex(cfg_ifname);
  if (!laddr.sll_ifindex)
   error(1, errno, "if_nametoindex");

  ret = sendto(fd, buf, len, 0, (void *)&laddr, sizeof(laddr));
 }

 if (ret == -1)
  error(1, errno, "write");
 if (ret != len)
  error(1, 0, "write: %u %u", ret, len);

 fprintf(stderr, "tx: %u\n", ret);
}
