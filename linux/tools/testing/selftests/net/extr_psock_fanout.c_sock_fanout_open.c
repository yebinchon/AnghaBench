
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint16_t ;
struct sockaddr_ll {scalar_t__ sll_ifindex; int sll_protocol; int sll_family; int member_0; } ;
typedef int addr ;


 int AF_PACKET ;
 int ETH_P_IP ;
 int PACKET_FANOUT ;
 int PF_PACKET ;
 int SOCK_RAW ;
 int SOL_PACKET ;
 scalar_t__ bind (int,void*,int) ;
 scalar_t__ close (int) ;
 int exit (int) ;
 int htons (int ) ;
 scalar_t__ if_nametoindex (char*) ;
 int pair_udp_setfilter (int) ;
 int perror (char*) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int sock_fanout_open(uint16_t typeflags, uint16_t group_id)
{
 struct sockaddr_ll addr = {0};
 int fd, val;

 fd = socket(PF_PACKET, SOCK_RAW, 0);
 if (fd < 0) {
  perror("socket packet");
  exit(1);
 }

 pair_udp_setfilter(fd);

 addr.sll_family = AF_PACKET;
 addr.sll_protocol = htons(ETH_P_IP);
 addr.sll_ifindex = if_nametoindex("lo");
 if (addr.sll_ifindex == 0) {
  perror("if_nametoindex");
  exit(1);
 }
 if (bind(fd, (void *) &addr, sizeof(addr))) {
  perror("bind packet");
  exit(1);
 }

 val = (((int) typeflags) << 16) | group_id;
 if (setsockopt(fd, SOL_PACKET, PACKET_FANOUT, &val, sizeof(val))) {
  if (close(fd)) {
   perror("close packet");
   exit(1);
  }
  return -1;
 }

 return fd;
}
