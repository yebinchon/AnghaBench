
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct sk_buff {int* data; } ;
struct iphdr {int ihl; } ;
struct gre_protocol {int (* err_handler ) (struct sk_buff*,int ) ;} ;


 int EINVAL ;
 int EPROTONOSUPPORT ;
 size_t GREPROTO_MAX ;
 int * gre_proto ;
 struct gre_protocol* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct sk_buff*,int ) ;

__attribute__((used)) static int gre_err(struct sk_buff *skb, u32 info)
{
 const struct gre_protocol *proto;
 const struct iphdr *iph = (const struct iphdr *)skb->data;
 u8 ver = skb->data[(iph->ihl<<2) + 1]&0x7f;
 int err = 0;

 if (ver >= GREPROTO_MAX)
  return -EINVAL;

 rcu_read_lock();
 proto = rcu_dereference(gre_proto[ver]);
 if (proto && proto->err_handler)
  proto->err_handler(skb, info);
 else
  err = -EPROTONOSUPPORT;
 rcu_read_unlock();

 return err;
}
