
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rxrpc_call {TYPE_2__* conn; } ;
struct TYPE_3__ {int security_level; } ;
struct TYPE_4__ {TYPE_1__ params; } ;




 int rxkad_locate_data_1 (struct rxrpc_call*,struct sk_buff*,unsigned int*,unsigned int*) ;
 int rxkad_locate_data_2 (struct rxrpc_call*,struct sk_buff*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void rxkad_locate_data(struct rxrpc_call *call, struct sk_buff *skb,
         unsigned int *_offset, unsigned int *_len)
{
 switch (call->conn->params.security_level) {
 case 129:
  rxkad_locate_data_1(call, skb, _offset, _len);
  return;
 case 128:
  rxkad_locate_data_2(call, skb, _offset, _len);
  return;
 default:
  return;
 }
}
