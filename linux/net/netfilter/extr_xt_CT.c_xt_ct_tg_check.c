
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zone ;
struct xt_tgchk_param {int family; int net; } ;
struct xt_ct_target_info_v1 {int flags; struct nf_conn* ct; scalar_t__* timeout; scalar_t__* helper; int exp_events; int ct_events; scalar_t__ zone; } ;
struct nf_conntrack_zone {int flags; int dir; scalar_t__ id; } ;
struct nf_conn_help {int helper; } ;
struct nf_conn {int ct_general; int status; } ;


 int EINVAL ;
 int ENAMETOOLONG ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int IPS_CONFIRMED_BIT ;
 int NF_CT_FLAG_MARK ;
 int XT_CT_NOTRACK ;
 int XT_CT_ZONE_DIR_ORIG ;
 int XT_CT_ZONE_DIR_REPL ;
 int XT_CT_ZONE_MARK ;
 int __set_bit (int ,int *) ;
 int memset (struct nf_conntrack_zone*,int ,int) ;
 int nf_conntrack_get (int *) ;
 int nf_conntrack_helper_put (int ) ;
 int nf_ct_ecache_ext_add (struct nf_conn*,int ,int ,int ) ;
 int nf_ct_netns_get (int ,int ) ;
 int nf_ct_netns_put (int ,int ) ;
 struct nf_conn* nf_ct_tmpl_alloc (int ,struct nf_conntrack_zone*,int ) ;
 int nf_ct_tmpl_free (struct nf_conn*) ;
 struct nf_conn_help* nfct_help (struct nf_conn*) ;
 int strnlen (scalar_t__*,int) ;
 int xt_ct_flags_to_dir (struct xt_ct_target_info_v1*) ;
 int xt_ct_set_helper (struct nf_conn*,scalar_t__*,struct xt_tgchk_param const*) ;
 int xt_ct_set_timeout (struct nf_conn*,struct xt_tgchk_param const*,scalar_t__*) ;

__attribute__((used)) static int xt_ct_tg_check(const struct xt_tgchk_param *par,
     struct xt_ct_target_info_v1 *info)
{
 struct nf_conntrack_zone zone;
 struct nf_conn_help *help;
 struct nf_conn *ct;
 int ret = -EOPNOTSUPP;

 if (info->flags & XT_CT_NOTRACK) {
  ct = ((void*)0);
  goto out;
 }


 if (info->zone || info->flags & (XT_CT_ZONE_DIR_ORIG |
      XT_CT_ZONE_DIR_REPL |
      XT_CT_ZONE_MARK))
  goto err1;


 ret = nf_ct_netns_get(par->net, par->family);
 if (ret < 0)
  goto err1;

 memset(&zone, 0, sizeof(zone));
 zone.id = info->zone;
 zone.dir = xt_ct_flags_to_dir(info);
 if (info->flags & XT_CT_ZONE_MARK)
  zone.flags |= NF_CT_FLAG_MARK;

 ct = nf_ct_tmpl_alloc(par->net, &zone, GFP_KERNEL);
 if (!ct) {
  ret = -ENOMEM;
  goto err2;
 }

 ret = 0;
 if ((info->ct_events || info->exp_events) &&
     !nf_ct_ecache_ext_add(ct, info->ct_events, info->exp_events,
      GFP_KERNEL)) {
  ret = -EINVAL;
  goto err3;
 }

 if (info->helper[0]) {
  if (strnlen(info->helper, sizeof(info->helper)) == sizeof(info->helper)) {
   ret = -ENAMETOOLONG;
   goto err3;
  }

  ret = xt_ct_set_helper(ct, info->helper, par);
  if (ret < 0)
   goto err3;
 }

 if (info->timeout[0]) {
  if (strnlen(info->timeout, sizeof(info->timeout)) == sizeof(info->timeout)) {
   ret = -ENAMETOOLONG;
   goto err4;
  }

  ret = xt_ct_set_timeout(ct, par, info->timeout);
  if (ret < 0)
   goto err4;
 }
 __set_bit(IPS_CONFIRMED_BIT, &ct->status);
 nf_conntrack_get(&ct->ct_general);
out:
 info->ct = ct;
 return 0;

err4:
 help = nfct_help(ct);
 if (help)
  nf_conntrack_helper_put(help->helper);
err3:
 nf_ct_tmpl_free(ct);
err2:
 nf_ct_netns_put(par->net, par->family);
err1:
 return ret;
}
