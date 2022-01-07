
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_buff {unsigned long data; unsigned long data_meta; } ;


 scalar_t__ xdp_data_meta_unsupported (struct xdp_buff const*) ;

__attribute__((used)) static unsigned long xdp_get_metalen(const struct xdp_buff *xdp)
{
 return xdp_data_meta_unsupported(xdp) ? 0 :
        xdp->data - xdp->data_meta;
}
