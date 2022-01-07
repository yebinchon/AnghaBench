
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; int dev; } ;
struct rs_msg {int opt; } ;
struct neighbour {int dummy; } ;
struct ndisc_options {scalar_t__ nd_opts_src_lladdr; } ;
struct TYPE_3__ {int forwarding; } ;
struct inet6_dev {TYPE_1__ cnf; } ;
struct in6_addr {int dummy; } ;
struct TYPE_4__ {struct in6_addr saddr; } ;


 int NDISC_ROUTER_SOLICITATION ;
 int ND_PRINTK (int,int ,char*) ;
 int NEIGH_UPDATE_F_OVERRIDE ;
 int NEIGH_UPDATE_F_OVERRIDE_ISROUTER ;
 int NEIGH_UPDATE_F_WEAK_OVERRIDE ;
 int NUD_STALE ;
 struct inet6_dev* __in6_dev_get (int ) ;
 struct neighbour* __neigh_lookup (int *,struct in6_addr const*,int ,int) ;
 int err ;
 scalar_t__ ipv6_addr_any (struct in6_addr const*) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 int nd_tbl ;
 int * ndisc_opt_addr_data (scalar_t__,int ) ;
 int ndisc_parse_options (int ,int ,unsigned long,struct ndisc_options*) ;
 int ndisc_update (int ,struct neighbour*,int *,int ,int,int ,struct ndisc_options*) ;
 int neigh_release (struct neighbour*) ;
 int notice ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;

__attribute__((used)) static void ndisc_recv_rs(struct sk_buff *skb)
{
 struct rs_msg *rs_msg = (struct rs_msg *)skb_transport_header(skb);
 unsigned long ndoptlen = skb->len - sizeof(*rs_msg);
 struct neighbour *neigh;
 struct inet6_dev *idev;
 const struct in6_addr *saddr = &ipv6_hdr(skb)->saddr;
 struct ndisc_options ndopts;
 u8 *lladdr = ((void*)0);

 if (skb->len < sizeof(*rs_msg))
  return;

 idev = __in6_dev_get(skb->dev);
 if (!idev) {
  ND_PRINTK(1, err, "RS: can't find in6 device\n");
  return;
 }


 if (!idev->cnf.forwarding)
  goto out;





 if (ipv6_addr_any(saddr))
  goto out;


 if (!ndisc_parse_options(skb->dev, rs_msg->opt, ndoptlen, &ndopts)) {
  ND_PRINTK(2, notice, "NS: invalid ND option, ignored\n");
  goto out;
 }

 if (ndopts.nd_opts_src_lladdr) {
  lladdr = ndisc_opt_addr_data(ndopts.nd_opts_src_lladdr,
          skb->dev);
  if (!lladdr)
   goto out;
 }

 neigh = __neigh_lookup(&nd_tbl, saddr, skb->dev, 1);
 if (neigh) {
  ndisc_update(skb->dev, neigh, lladdr, NUD_STALE,
        NEIGH_UPDATE_F_WEAK_OVERRIDE|
        NEIGH_UPDATE_F_OVERRIDE|
        NEIGH_UPDATE_F_OVERRIDE_ISROUTER,
        NDISC_ROUTER_SOLICITATION, &ndopts);
  neigh_release(neigh);
 }
out:
 return;
}
