
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lowpan_nhc {int * idmask; int * id; } ;


 int LOWPAN_GHC_EXT_ROUTE_ID_0 ;
 int LOWPAN_GHC_EXT_ROUTE_MASK_0 ;

__attribute__((used)) static void route_ghid_setup(struct lowpan_nhc *nhc)
{
 nhc->id[0] = LOWPAN_GHC_EXT_ROUTE_ID_0;
 nhc->idmask[0] = LOWPAN_GHC_EXT_ROUTE_MASK_0;
}
