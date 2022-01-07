
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xfrm_input_afinfo {int (* callback ) (struct sk_buff*,int ,int) ;} ;
struct sk_buff {int dummy; } ;


 int EAFNOSUPPORT ;
 int rcu_read_unlock () ;
 int stub1 (struct sk_buff*,int ,int) ;
 struct xfrm_input_afinfo* xfrm_input_get_afinfo (unsigned int) ;

__attribute__((used)) static int xfrm_rcv_cb(struct sk_buff *skb, unsigned int family, u8 protocol,
         int err)
{
 int ret;
 const struct xfrm_input_afinfo *afinfo = xfrm_input_get_afinfo(family);

 if (!afinfo)
  return -EAFNOSUPPORT;

 ret = afinfo->callback(skb, protocol, err);
 rcu_read_unlock();

 return ret;
}
