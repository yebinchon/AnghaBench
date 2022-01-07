
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int GFP_ATOMIC ;
 scalar_t__ INT_H_SIZE ;
 int NAME_DISTRIBUTOR ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int msg_set_size (struct tipc_msg*,scalar_t__) ;
 struct sk_buff* tipc_buf_acquire (scalar_t__,int ) ;
 int tipc_msg_init (scalar_t__,struct tipc_msg*,int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ tipc_own_addr (struct net*) ;

__attribute__((used)) static struct sk_buff *named_prepare_buf(struct net *net, u32 type, u32 size,
      u32 dest)
{
 struct sk_buff *buf = tipc_buf_acquire(INT_H_SIZE + size, GFP_ATOMIC);
 u32 self = tipc_own_addr(net);
 struct tipc_msg *msg;

 if (buf != ((void*)0)) {
  msg = buf_msg(buf);
  tipc_msg_init(self, msg, NAME_DISTRIBUTOR,
         type, INT_H_SIZE, dest);
  msg_set_size(msg, INT_H_SIZE + size);
 }
 return buf;
}
