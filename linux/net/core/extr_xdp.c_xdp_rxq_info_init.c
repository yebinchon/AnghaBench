
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_rxq_info {int dummy; } ;


 int memset (struct xdp_rxq_info*,int ,int) ;

__attribute__((used)) static void xdp_rxq_info_init(struct xdp_rxq_info *xdp_rxq)
{
 memset(xdp_rxq, 0, sizeof(*xdp_rxq));
}
