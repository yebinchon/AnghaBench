
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_md {int dummy; } ;


 int bpf_redirect (int,int ) ;

int xdp_redirect_to_111(struct xdp_md *xdp)
{
 return bpf_redirect(111, 0);
}
