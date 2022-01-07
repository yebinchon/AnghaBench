
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int discard ;


 int PACKET_LOSS ;
 int SOL_PACKET ;
 int exit (int) ;
 int perror (char*) ;
 int setsockopt (int,int ,int ,void*,int) ;

__attribute__((used)) static void __v1_v2_set_packet_loss_discard(int sock)
{
 int ret, discard = 1;

 ret = setsockopt(sock, SOL_PACKET, PACKET_LOSS, (void *) &discard,
    sizeof(discard));
 if (ret == -1) {
  perror("setsockopt");
  exit(1);
 }
}
