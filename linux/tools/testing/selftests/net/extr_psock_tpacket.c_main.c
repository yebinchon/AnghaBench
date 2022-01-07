
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PACKET_RX_RING ;
 int PACKET_TX_RING ;
 int TPACKET_V1 ;
 int TPACKET_V2 ;
 int TPACKET_V3 ;
 int printf (char*) ;
 int test_tpacket (int ,int ) ;

int main(void)
{
 int ret = 0;

 ret |= test_tpacket(TPACKET_V1, PACKET_RX_RING);
 ret |= test_tpacket(TPACKET_V1, PACKET_TX_RING);

 ret |= test_tpacket(TPACKET_V2, PACKET_RX_RING);
 ret |= test_tpacket(TPACKET_V2, PACKET_TX_RING);

 ret |= test_tpacket(TPACKET_V3, PACKET_RX_RING);
 ret |= test_tpacket(TPACKET_V3, PACKET_TX_RING);

 if (ret)
  return 1;

 printf("OK. All tests passed\n");
 return 0;
}
