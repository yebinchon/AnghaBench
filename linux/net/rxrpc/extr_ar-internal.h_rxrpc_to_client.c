
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_skb_priv {int dummy; } ;


 int rxrpc_to_server (struct rxrpc_skb_priv const*) ;

__attribute__((used)) static inline bool rxrpc_to_client(const struct rxrpc_skb_priv *sp)
{
 return !rxrpc_to_server(sp);
}
