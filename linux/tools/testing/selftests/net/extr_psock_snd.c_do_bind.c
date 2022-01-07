
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ll {int sll_ifindex; int sll_protocol; int sll_family; int member_0; } ;
typedef int laddr ;


 int AF_PACKET ;
 int ETH_P_IP ;
 scalar_t__ bind (int,void*,int) ;
 int cfg_ifname ;
 int errno ;
 int error (int,int ,char*) ;
 int htons (int ) ;
 int if_nametoindex (int ) ;

__attribute__((used)) static void do_bind(int fd)
{
 struct sockaddr_ll laddr = {0};

 laddr.sll_family = AF_PACKET;
 laddr.sll_protocol = htons(ETH_P_IP);
 laddr.sll_ifindex = if_nametoindex(cfg_ifname);
 if (!laddr.sll_ifindex)
  error(1, errno, "if_nametoindex");

 if (bind(fd, (void *)&laddr, sizeof(laddr)))
  error(1, errno, "bind");
}
