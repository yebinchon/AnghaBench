
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;



__attribute__((used)) static inline struct tipc_msg *buf_msg(struct sk_buff *skb)
{
 return (struct tipc_msg *)skb->data;
}
