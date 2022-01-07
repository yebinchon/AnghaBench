
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_md {int dummy; } ;


 int bpf_redirect_map (int *,int,int ) ;
 int tx_port ;

int xdp_redirect_map_1(struct xdp_md *xdp)
{
 return bpf_redirect_map(&tx_port, 1, 0);
}
