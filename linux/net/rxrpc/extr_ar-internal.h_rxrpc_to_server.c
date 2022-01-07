
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;


 int RXRPC_CLIENT_INITIATED ;

__attribute__((used)) static inline bool rxrpc_to_server(const struct rxrpc_skb_priv *sp)
{
 return sp->hdr.flags & RXRPC_CLIENT_INITIATED;
}
