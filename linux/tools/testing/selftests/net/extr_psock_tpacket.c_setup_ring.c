
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring {int type; int version; int rd_len; int rd_num; int * rd; int req3; int req; } ;


 int PACKET_TX_RING ;
 int SOL_PACKET ;



 int __v1_v2_fill (struct ring*,unsigned int) ;
 int __v1_v2_set_packet_loss_discard (int) ;
 int __v3_fill (struct ring*,unsigned int,int) ;
 int exit (int) ;
 int * malloc (int) ;
 int perror (char*) ;
 int setsockopt (int,int ,int,int *,int) ;
 scalar_t__ total_bytes ;
 scalar_t__ total_packets ;

__attribute__((used)) static void setup_ring(int sock, struct ring *ring, int version, int type)
{
 int ret = 0;
 unsigned int blocks = 256;

 ring->type = type;
 ring->version = version;

 switch (version) {
 case 130:
 case 129:
  if (type == PACKET_TX_RING)
   __v1_v2_set_packet_loss_discard(sock);
  __v1_v2_fill(ring, blocks);
  ret = setsockopt(sock, SOL_PACKET, type, &ring->req,
     sizeof(ring->req));
  break;

 case 128:
  __v3_fill(ring, blocks, type);
  ret = setsockopt(sock, SOL_PACKET, type, &ring->req3,
     sizeof(ring->req3));
  break;
 }

 if (ret == -1) {
  perror("setsockopt");
  exit(1);
 }

 ring->rd_len = ring->rd_num * sizeof(*ring->rd);
 ring->rd = malloc(ring->rd_len);
 if (ring->rd == ((void*)0)) {
  perror("malloc");
  exit(1);
 }

 total_packets = 0;
 total_bytes = 0;
}
