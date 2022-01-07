
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_2__ {scalar_t__ sll_halen; scalar_t__ sll_pkttype; scalar_t__ sll_hatype; int sll_ifindex; int sll_protocol; int sll_family; } ;
struct ring {TYPE_1__ ll; } ;


 int ETH_P_ALL ;
 int PF_PACKET ;
 int bind (int,struct sockaddr*,int) ;
 int exit (int) ;
 int htons (int ) ;
 int if_nametoindex (char*) ;
 int pair_udp_setfilter (int) ;
 int perror (char*) ;

__attribute__((used)) static void bind_ring(int sock, struct ring *ring)
{
 int ret;

 pair_udp_setfilter(sock);

 ring->ll.sll_family = PF_PACKET;
 ring->ll.sll_protocol = htons(ETH_P_ALL);
 ring->ll.sll_ifindex = if_nametoindex("lo");
 ring->ll.sll_hatype = 0;
 ring->ll.sll_pkttype = 0;
 ring->ll.sll_halen = 0;

 ret = bind(sock, (struct sockaddr *) &ring->ll, sizeof(ring->ll));
 if (ret == -1) {
  perror("bind");
  exit(1);
 }
}
