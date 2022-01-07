
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct sw_flow_match {TYPE_1__* key; scalar_t__ mask; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_7__ {int tci; } ;
struct TYPE_6__ {int tci; } ;
struct TYPE_8__ {TYPE_3__ cvlan; TYPE_2__ vlan; } ;
struct TYPE_5__ {scalar_t__ tun_proto; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int OVS_KEY_ATTR_MAX ;
 int SW_FLOW_KEY_MEMSET_FIELD (struct sw_flow_match*,int ,int,int) ;
 int SW_FLOW_KEY_PUT (struct sw_flow_match*,int ,int ,int) ;
 TYPE_4__ eth ;
 int htons (int) ;
 int kfree (struct nlattr*) ;
 struct nlattr* kmemdup (struct nlattr const*,int ,int ) ;
 int mask_set_nlattr (struct nlattr*,int) ;
 int match_validate (struct sw_flow_match*,int ,int ,int) ;
 int nla_len (struct nlattr const*) ;
 int nla_total_size (int ) ;
 int ovs_key_from_nlattrs (struct net*,struct sw_flow_match*,int ,struct nlattr const**,int,int) ;
 int parse_flow_mask_nlattrs (struct nlattr const*,struct nlattr const**,int *,int) ;
 int parse_flow_nlattrs (struct nlattr const*,struct nlattr const**,int *,int) ;
 int parse_vlan_from_nlattrs (struct sw_flow_match*,int *,struct nlattr const**,int,int) ;
 int tun_key ;

int ovs_nla_get_match(struct net *net, struct sw_flow_match *match,
        const struct nlattr *nla_key,
        const struct nlattr *nla_mask,
        bool log)
{
 const struct nlattr *a[OVS_KEY_ATTR_MAX + 1];
 struct nlattr *newmask = ((void*)0);
 u64 key_attrs = 0;
 u64 mask_attrs = 0;
 int err;

 err = parse_flow_nlattrs(nla_key, a, &key_attrs, log);
 if (err)
  return err;

 err = parse_vlan_from_nlattrs(match, &key_attrs, a, 0, log);
 if (err)
  return err;

 err = ovs_key_from_nlattrs(net, match, key_attrs, a, 0, log);
 if (err)
  return err;

 if (match->mask) {
  if (!nla_mask) {
   newmask = kmemdup(nla_key,
       nla_total_size(nla_len(nla_key)),
       GFP_KERNEL);
   if (!newmask)
    return -ENOMEM;

   mask_set_nlattr(newmask, 0xff);




   if (match->key->tun_proto)
    SW_FLOW_KEY_MEMSET_FIELD(match, tun_key,
        0xff, 1);

   nla_mask = newmask;
  }

  err = parse_flow_mask_nlattrs(nla_mask, a, &mask_attrs, log);
  if (err)
   goto free_newmask;


  SW_FLOW_KEY_PUT(match, eth.vlan.tci, htons(0xffff), 1);
  SW_FLOW_KEY_PUT(match, eth.cvlan.tci, htons(0xffff), 1);

  err = parse_vlan_from_nlattrs(match, &mask_attrs, a, 1, log);
  if (err)
   goto free_newmask;

  err = ovs_key_from_nlattrs(net, match, mask_attrs, a, 1,
        log);
  if (err)
   goto free_newmask;
 }

 if (!match_validate(match, key_attrs, mask_attrs, log))
  err = -EINVAL;

free_newmask:
 kfree(newmask);
 return err;
}
