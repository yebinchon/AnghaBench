
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


union frame_map {TYPE_5__* v2; void* raw; TYPE_3__* v1; } ;
typedef int uint8_t ;
struct tpacket3_hdr {size_t tp_snaplen; size_t tp_len; int tp_next_offset; } ;
struct sockaddr_ll {int sll_ifindex; int sll_halen; int sll_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_6__ {int tp_frame_nr; } ;
struct ring {int version; int rd_num; scalar_t__ type; TYPE_1__ req3; } ;
struct pollfd {int fd; int events; scalar_t__ revents; } ;
typedef int pfd ;
typedef int packet ;
typedef int ll ;
struct TYPE_9__ {size_t tp_snaplen; size_t tp_len; } ;
struct TYPE_10__ {TYPE_4__ tp_h; } ;
struct TYPE_7__ {size_t tp_snaplen; size_t tp_len; } ;
struct TYPE_8__ {TYPE_2__ tp_h; } ;


 int ETH_ALEN ;
 int ETH_P_ALL ;
 int NUM_PACKETS ;
 scalar_t__ PACKET_TX_RING ;
 int PF_PACKET ;
 int POLLERR ;
 int POLLOUT ;
 int SOCK_RAW ;
 int TPACKET2_HDRLEN ;
 int TPACKET3_HDRLEN ;
 int TPACKET_HDRLEN ;



 scalar_t__ __tx_kernel_ready (void*,int) ;
 int __tx_user_ready (void*,int) ;
 int bind (int,struct sockaddr*,int) ;
 int bug_on (int) ;
 int close (int) ;
 int create_payload (char*,size_t*) ;
 int exit (int) ;
 int fprintf (int ,char*,int,unsigned int,...) ;
 void* get_next_frame (struct ring*,unsigned int) ;
 int htons (int ) ;
 int if_nametoindex (char*) ;
 int memcpy (int ,char*,size_t) ;
 int memset (struct pollfd*,int ,int) ;
 int pair_udp_setfilter (int) ;
 int perror (char*) ;
 int poll (struct pollfd*,int,int) ;
 int recvfrom (int,char*,int,int ,int *,int *) ;
 int sendto (int,int *,int ,int ,int *,int ) ;
 int socket (int ,int ,int ) ;
 int status_bar_update () ;
 int stderr ;
 int test_payload (char*,int) ;
 size_t total_bytes ;
 int total_packets ;

__attribute__((used)) static void walk_tx(int sock, struct ring *ring)
{
 struct pollfd pfd;
 int rcv_sock, ret;
 size_t packet_len;
 union frame_map ppd;
 char packet[1024];
 unsigned int frame_num = 0, got = 0;
 struct sockaddr_ll ll = {
  .sll_family = PF_PACKET,
  .sll_halen = ETH_ALEN,
 };
 int nframes;





 if (ring->version <= 129)
  nframes = ring->rd_num;
 else
  nframes = ring->req3.tp_frame_nr;

 bug_on(ring->type != PACKET_TX_RING);
 bug_on(nframes < NUM_PACKETS);

 rcv_sock = socket(PF_PACKET, SOCK_RAW, htons(ETH_P_ALL));
 if (rcv_sock == -1) {
  perror("socket");
  exit(1);
 }

 pair_udp_setfilter(rcv_sock);

 ll.sll_ifindex = if_nametoindex("lo");
 ret = bind(rcv_sock, (struct sockaddr *) &ll, sizeof(ll));
 if (ret == -1) {
  perror("bind");
  exit(1);
 }

 memset(&pfd, 0, sizeof(pfd));
 pfd.fd = sock;
 pfd.events = POLLOUT | POLLERR;
 pfd.revents = 0;

 total_packets = NUM_PACKETS;
 create_payload(packet, &packet_len);

 while (total_packets > 0) {
  void *next = get_next_frame(ring, frame_num);

  while (__tx_kernel_ready(next, ring->version) &&
         total_packets > 0) {
   ppd.raw = next;

   switch (ring->version) {
   case 130:
    ppd.v1->tp_h.tp_snaplen = packet_len;
    ppd.v1->tp_h.tp_len = packet_len;

    memcpy((uint8_t *) ppd.raw + TPACKET_HDRLEN -
           sizeof(struct sockaddr_ll), packet,
           packet_len);
    total_bytes += ppd.v1->tp_h.tp_snaplen;
    break;

   case 129:
    ppd.v2->tp_h.tp_snaplen = packet_len;
    ppd.v2->tp_h.tp_len = packet_len;

    memcpy((uint8_t *) ppd.raw + TPACKET2_HDRLEN -
           sizeof(struct sockaddr_ll), packet,
           packet_len);
    total_bytes += ppd.v2->tp_h.tp_snaplen;
    break;
   case 128: {
    struct tpacket3_hdr *tx = next;

    tx->tp_snaplen = packet_len;
    tx->tp_len = packet_len;
    tx->tp_next_offset = 0;

    memcpy((uint8_t *)tx + TPACKET3_HDRLEN -
           sizeof(struct sockaddr_ll), packet,
           packet_len);
    total_bytes += tx->tp_snaplen;
    break;
   }
   }

   status_bar_update();
   total_packets--;

   __tx_user_ready(next, ring->version);

   frame_num = (frame_num + 1) % nframes;
  }

  poll(&pfd, 1, 1);
 }

 bug_on(total_packets != 0);

 ret = sendto(sock, ((void*)0), 0, 0, ((void*)0), 0);
 if (ret == -1) {
  perror("sendto");
  exit(1);
 }

 while ((ret = recvfrom(rcv_sock, packet, sizeof(packet),
          0, ((void*)0), ((void*)0))) > 0 &&
        total_packets < NUM_PACKETS) {
  got += ret;
  test_payload(packet, ret);

  status_bar_update();
  total_packets++;
 }

 close(rcv_sock);

 if (total_packets != NUM_PACKETS) {
  fprintf(stderr, "walk_v%d_rx: received %u out of %u pkts\n",
   ring->version, total_packets, NUM_PACKETS);
  exit(1);
 }

 fprintf(stderr, " %u pkts (%u bytes)", NUM_PACKETS, got);
}
