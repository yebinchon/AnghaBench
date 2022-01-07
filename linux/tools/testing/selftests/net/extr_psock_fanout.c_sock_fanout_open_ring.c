
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct tpacket_req {int tp_block_size; int tp_frame_size; int tp_block_nr; int tp_frame_nr; } ;
typedef int req ;


 char* MAP_FAILED ;
 int MAP_SHARED ;
 int PACKET_RX_RING ;
 int PACKET_VERSION ;
 int PROT_READ ;
 int PROT_WRITE ;
 int RING_NUM_FRAMES ;
 int SOL_PACKET ;
 int TPACKET_V2 ;
 int exit (int) ;
 int getpagesize () ;
 char* mmap (int ,int,int,int ,int,int ) ;
 int perror (char*) ;
 scalar_t__ setsockopt (int,int ,int ,void*,int) ;

__attribute__((used)) static char *sock_fanout_open_ring(int fd)
{
 struct tpacket_req req = {
  .tp_block_size = getpagesize(),
  .tp_frame_size = getpagesize(),
  .tp_block_nr = RING_NUM_FRAMES,
  .tp_frame_nr = RING_NUM_FRAMES,
 };
 char *ring;
 int val = TPACKET_V2;

 if (setsockopt(fd, SOL_PACKET, PACKET_VERSION, (void *) &val,
         sizeof(val))) {
  perror("packetsock ring setsockopt version");
  exit(1);
 }
 if (setsockopt(fd, SOL_PACKET, PACKET_RX_RING, (void *) &req,
         sizeof(req))) {
  perror("packetsock ring setsockopt");
  exit(1);
 }

 ring = mmap(0, req.tp_block_size * req.tp_block_nr,
      PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
 if (ring == MAP_FAILED) {
  perror("packetsock ring mmap");
  exit(1);
 }

 return ring;
}
