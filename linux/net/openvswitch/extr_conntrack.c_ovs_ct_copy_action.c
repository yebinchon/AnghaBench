
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_6__ {int proto; } ;
struct sw_flow_key {TYPE_1__ ip; } ;
struct sw_flow_actions {int dummy; } ;
struct ovs_conntrack_info {TYPE_2__* ct; int nf_ct_timeout; scalar_t__* timeout; int zone; scalar_t__ family; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
typedef int ct_info ;
struct TYPE_8__ {int timeout; } ;
struct TYPE_7__ {int ct_general; int status; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IPS_CONFIRMED_BIT ;
 scalar_t__ NFPROTO_UNSPEC ;
 int NF_CT_DEFAULT_ZONE_DIR ;
 int NF_CT_DEFAULT_ZONE_ID ;
 int OVS_ACTION_ATTR_CT ;
 int OVS_NLERR (int,char*) ;
 int __ovs_ct_free_action (struct ovs_conntrack_info*) ;
 int __set_bit (int ,int *) ;
 scalar_t__ key_to_nfproto (struct sw_flow_key const*) ;
 int memset (struct ovs_conntrack_info*,int ,int) ;
 int nf_conntrack_get (int *) ;
 scalar_t__ nf_ct_set_timeout (struct net*,TYPE_2__*,scalar_t__,int ,scalar_t__*) ;
 TYPE_3__* nf_ct_timeout_find (TYPE_2__*) ;
 TYPE_2__* nf_ct_tmpl_alloc (struct net*,int *,int ) ;
 int nf_ct_zone_init (int *,int ,int ,int ) ;
 int ovs_ct_add_helper (struct ovs_conntrack_info*,char const*,struct sw_flow_key const*,int) ;
 int ovs_nla_add_action (struct sw_flow_actions**,int ,struct ovs_conntrack_info*,int,int) ;
 int parse_ct (struct nlattr const*,struct ovs_conntrack_info*,char const**,int) ;
 int pr_info_ratelimited (char*,scalar_t__*) ;
 int rcu_dereference (int ) ;

int ovs_ct_copy_action(struct net *net, const struct nlattr *attr,
         const struct sw_flow_key *key,
         struct sw_flow_actions **sfa, bool log)
{
 struct ovs_conntrack_info ct_info;
 const char *helper = ((void*)0);
 u16 family;
 int err;

 family = key_to_nfproto(key);
 if (family == NFPROTO_UNSPEC) {
  OVS_NLERR(log, "ct family unspecified");
  return -EINVAL;
 }

 memset(&ct_info, 0, sizeof(ct_info));
 ct_info.family = family;

 nf_ct_zone_init(&ct_info.zone, NF_CT_DEFAULT_ZONE_ID,
   NF_CT_DEFAULT_ZONE_DIR, 0);

 err = parse_ct(attr, &ct_info, &helper, log);
 if (err)
  return err;


 ct_info.ct = nf_ct_tmpl_alloc(net, &ct_info.zone, GFP_KERNEL);
 if (!ct_info.ct) {
  OVS_NLERR(log, "Failed to allocate conntrack template");
  return -ENOMEM;
 }

 if (ct_info.timeout[0]) {
  if (nf_ct_set_timeout(net, ct_info.ct, family, key->ip.proto,
          ct_info.timeout))
   pr_info_ratelimited("Failed to associated timeout "
         "policy `%s'\n", ct_info.timeout);
  else
   ct_info.nf_ct_timeout = rcu_dereference(
    nf_ct_timeout_find(ct_info.ct)->timeout);

 }

 if (helper) {
  err = ovs_ct_add_helper(&ct_info, helper, key, log);
  if (err)
   goto err_free_ct;
 }

 err = ovs_nla_add_action(sfa, OVS_ACTION_ATTR_CT, &ct_info,
     sizeof(ct_info), log);
 if (err)
  goto err_free_ct;

 __set_bit(IPS_CONFIRMED_BIT, &ct_info.ct->status);
 nf_conntrack_get(&ct_info.ct->ct_general);
 return 0;
err_free_ct:
 __ovs_ct_free_action(&ct_info);
 return err;
}
