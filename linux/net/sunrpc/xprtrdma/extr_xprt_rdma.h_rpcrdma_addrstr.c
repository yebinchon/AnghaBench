
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const** address_strings; } ;
struct rpcrdma_xprt {TYPE_1__ rx_xprt; } ;


 size_t RPC_DISPLAY_ADDR ;

__attribute__((used)) static inline const char *
rpcrdma_addrstr(const struct rpcrdma_xprt *r_xprt)
{
 return r_xprt->rx_xprt.address_strings[RPC_DISPLAY_ADDR];
}
