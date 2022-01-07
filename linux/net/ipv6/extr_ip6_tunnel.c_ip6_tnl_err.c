
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {TYPE_2__* dev; int * data; } ;
struct net {int dummy; } ;
struct ipv6hdr {int payload_len; int saddr; int daddr; } ;
struct ipv6_tlv_tnl_enc_lim {int encap_limit; } ;
struct TYPE_3__ {int name; int proto; } ;
struct ip6_tnl {TYPE_1__ parms; } ;
struct inet6_skb_parm {int dummy; } ;
typedef scalar_t__ __u8 ;
typedef size_t __u32 ;
typedef size_t __u16 ;
struct TYPE_4__ {int ifindex; } ;


 int ENOENT ;
 scalar_t__ ICMPV6_ADDR_UNREACH ;

 scalar_t__ ICMPV6_EXC_HOPLIMIT ;
 scalar_t__ ICMPV6_HDR_FIELD ;



 size_t IPV6_MIN_MTU ;

 scalar_t__ READ_ONCE (int ) ;
 struct net* dev_net (TYPE_2__*) ;
 int htonl (size_t) ;
 int ip6_redirect (struct sk_buff*,struct net*,int ,int ,int ) ;
 struct ip6_tnl* ip6_tnl_lookup (struct net*,int *,int *) ;
 size_t ip6_tnl_parse_tlv_enc_lim (struct sk_buff*,int *) ;
 int ip6_update_pmtu (struct sk_buff*,struct net*,int ,int ,int ,int ) ;
 int net_dbg_ratelimited (char*,int ) ;
 int ntohs (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sock_net_uid (struct net*,int *) ;

__attribute__((used)) static int
ip6_tnl_err(struct sk_buff *skb, __u8 ipproto, struct inet6_skb_parm *opt,
     u8 *type, u8 *code, int *msg, __u32 *info, int offset)
{
 const struct ipv6hdr *ipv6h = (const struct ipv6hdr *)skb->data;
 struct net *net = dev_net(skb->dev);
 u8 rel_type = 132;
 u8 rel_code = ICMPV6_ADDR_UNREACH;
 __u32 rel_info = 0;
 struct ip6_tnl *t;
 int err = -ENOENT;
 int rel_msg = 0;
 u8 tproto;
 __u16 len;





 rcu_read_lock();
 t = ip6_tnl_lookup(dev_net(skb->dev), &ipv6h->daddr, &ipv6h->saddr);
 if (!t)
  goto out;

 tproto = READ_ONCE(t->parms.proto);
 if (tproto != ipproto && tproto != 0)
  goto out;

 err = 0;

 switch (*type) {
  struct ipv6_tlv_tnl_enc_lim *tel;
  __u32 mtu, teli;
 case 132:
  net_dbg_ratelimited("%s: Path to destination invalid or inactive!\n",
        t->parms.name);
  rel_msg = 1;
  break;
 case 129:
  if ((*code) == ICMPV6_EXC_HOPLIMIT) {
   net_dbg_ratelimited("%s: Too small hop limit or routing loop in tunnel!\n",
         t->parms.name);
   rel_msg = 1;
  }
  break;
 case 131:
  teli = 0;
  if ((*code) == ICMPV6_HDR_FIELD)
   teli = ip6_tnl_parse_tlv_enc_lim(skb, skb->data);

  if (teli && teli == *info - 2) {
   tel = (struct ipv6_tlv_tnl_enc_lim *) &skb->data[teli];
   if (tel->encap_limit == 0) {
    net_dbg_ratelimited("%s: Too small encapsulation limit or routing loop in tunnel!\n",
          t->parms.name);
    rel_msg = 1;
   }
  } else {
   net_dbg_ratelimited("%s: Recipient unable to parse tunneled packet!\n",
         t->parms.name);
  }
  break;
 case 130:
  ip6_update_pmtu(skb, net, htonl(*info), 0, 0,
    sock_net_uid(net, ((void*)0)));
  mtu = *info - offset;
  if (mtu < IPV6_MIN_MTU)
   mtu = IPV6_MIN_MTU;
  len = sizeof(*ipv6h) + ntohs(ipv6h->payload_len);
  if (len > mtu) {
   rel_type = 130;
   rel_code = 0;
   rel_info = mtu;
   rel_msg = 1;
  }
  break;
 case 128:
  ip6_redirect(skb, net, skb->dev->ifindex, 0,
        sock_net_uid(net, ((void*)0)));
  break;
 }

 *type = rel_type;
 *code = rel_code;
 *info = rel_info;
 *msg = rel_msg;

out:
 rcu_read_unlock();
 return err;
}
