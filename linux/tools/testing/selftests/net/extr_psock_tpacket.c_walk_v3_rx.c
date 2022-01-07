
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ring {scalar_t__ type; unsigned int rd_num; TYPE_1__* rd; } ;
struct pollfd {int fd; int events; scalar_t__ revents; } ;
struct TYPE_4__ {int block_status; } ;
struct block_desc {TYPE_2__ h1; } ;
typedef int pfd ;
struct TYPE_3__ {scalar_t__ iov_base; } ;


 int NUM_PACKETS ;
 scalar_t__ PACKET_RX_RING ;
 int POLLERR ;
 int POLLIN ;
 int PORT_BASE ;
 int TP_STATUS_USER ;
 int __v3_flush_block (struct block_desc*) ;
 int __v3_walk_block (struct block_desc*,unsigned int) ;
 int bug_on (int) ;
 int exit (int) ;
 int fprintf (int ,char*,int,int) ;
 int memset (struct pollfd*,int ,int) ;
 int pair_udp_close (int*) ;
 int pair_udp_open (int*,int ) ;
 int pair_udp_send (int*,int) ;
 int poll (struct pollfd*,int,int) ;
 int stderr ;
 int total_bytes ;
 int total_packets ;

__attribute__((used)) static void walk_v3_rx(int sock, struct ring *ring)
{
 unsigned int block_num = 0;
 struct pollfd pfd;
 struct block_desc *pbd;
 int udp_sock[2];

 bug_on(ring->type != PACKET_RX_RING);

 pair_udp_open(udp_sock, PORT_BASE);

 memset(&pfd, 0, sizeof(pfd));
 pfd.fd = sock;
 pfd.events = POLLIN | POLLERR;
 pfd.revents = 0;

 pair_udp_send(udp_sock, NUM_PACKETS);

 while (total_packets < NUM_PACKETS * 2) {
  pbd = (struct block_desc *) ring->rd[block_num].iov_base;

  while ((pbd->h1.block_status & TP_STATUS_USER) == 0)
   poll(&pfd, 1, 1);

  __v3_walk_block(pbd, block_num);
  __v3_flush_block(pbd);

  block_num = (block_num + 1) % ring->rd_num;
 }

 pair_udp_close(udp_sock);

 if (total_packets != 2 * NUM_PACKETS) {
  fprintf(stderr, "walk_v3_rx: received %u out of %u pkts\n",
   total_packets, NUM_PACKETS);
  exit(1);
 }

 fprintf(stderr, " %u pkts (%u bytes)", NUM_PACKETS, total_bytes >> 1);
}
