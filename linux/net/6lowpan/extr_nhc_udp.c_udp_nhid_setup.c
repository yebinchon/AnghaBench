
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lowpan_nhc {int * idmask; int * id; } ;


 int LOWPAN_NHC_UDP_ID ;
 int LOWPAN_NHC_UDP_MASK ;

__attribute__((used)) static void udp_nhid_setup(struct lowpan_nhc *nhc)
{
 nhc->id[0] = LOWPAN_NHC_UDP_ID;
 nhc->idmask[0] = LOWPAN_NHC_UDP_MASK;
}
