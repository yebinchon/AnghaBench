
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rxrpc_call {int dummy; } ;



__attribute__((used)) static int none_secure_packet(struct rxrpc_call *call,
         struct sk_buff *skb,
         size_t data_size,
         void *sechdr)
{
 return 0;
}
