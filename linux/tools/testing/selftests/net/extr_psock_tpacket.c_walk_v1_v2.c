
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring {scalar_t__ type; } ;


 scalar_t__ PACKET_RX_RING ;
 int walk_tx (int,struct ring*) ;
 int walk_v1_v2_rx (int,struct ring*) ;

__attribute__((used)) static void walk_v1_v2(int sock, struct ring *ring)
{
 if (ring->type == PACKET_RX_RING)
  walk_v1_v2_rx(sock, ring);
 else
  walk_tx(sock, ring);
}
