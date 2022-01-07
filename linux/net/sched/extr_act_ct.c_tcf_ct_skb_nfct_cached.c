
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct nf_conn {int ct_general; int ct_net; } ;
struct net {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_2__ {scalar_t__ id; } ;


 scalar_t__ CTINFO2DIR (int) ;
 scalar_t__ IP_CT_DIR_ORIGINAL ;
 int IP_CT_UNTRACKED ;
 int net_eq (struct net*,int ) ;
 int nf_conntrack_put (int *) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 scalar_t__ nf_ct_is_confirmed (struct nf_conn*) ;
 int nf_ct_kill (struct nf_conn*) ;
 int nf_ct_set (struct sk_buff*,int *,int ) ;
 TYPE_1__* nf_ct_zone (struct nf_conn*) ;
 int read_pnet (int *) ;

__attribute__((used)) static bool tcf_ct_skb_nfct_cached(struct net *net, struct sk_buff *skb,
       u16 zone_id, bool force)
{
 enum ip_conntrack_info ctinfo;
 struct nf_conn *ct;

 ct = nf_ct_get(skb, &ctinfo);
 if (!ct)
  return 0;
 if (!net_eq(net, read_pnet(&ct->ct_net)))
  return 0;
 if (nf_ct_zone(ct)->id != zone_id)
  return 0;


 if (force && CTINFO2DIR(ctinfo) != IP_CT_DIR_ORIGINAL) {
  if (nf_ct_is_confirmed(ct))
   nf_ct_kill(ct);

  nf_conntrack_put(&ct->ct_general);
  nf_ct_set(skb, ((void*)0), IP_CT_UNTRACKED);

  return 0;
 }

 return 1;
}
