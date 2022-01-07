
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xt_tgchk_param {int family; } ;
struct nf_conntrack_helper {int dummy; } ;
struct nf_conn_help {struct nf_conntrack_helper* helper; } ;
struct nf_conn {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int nf_conntrack_helper_put (struct nf_conntrack_helper*) ;
 struct nf_conntrack_helper* nf_conntrack_helper_try_module_get (char const*,int ,int ) ;
 struct nf_conn_help* nf_ct_helper_ext_add (struct nf_conn*,int ) ;
 int pr_info_ratelimited (char*,...) ;
 int xt_ct_find_proto (struct xt_tgchk_param const*) ;

__attribute__((used)) static int
xt_ct_set_helper(struct nf_conn *ct, const char *helper_name,
   const struct xt_tgchk_param *par)
{
 struct nf_conntrack_helper *helper;
 struct nf_conn_help *help;
 u8 proto;

 proto = xt_ct_find_proto(par);
 if (!proto) {
  pr_info_ratelimited("You must specify a L4 protocol and not use inversions on it\n");
  return -ENOENT;
 }

 helper = nf_conntrack_helper_try_module_get(helper_name, par->family,
          proto);
 if (helper == ((void*)0)) {
  pr_info_ratelimited("No such helper \"%s\"\n", helper_name);
  return -ENOENT;
 }

 help = nf_ct_helper_ext_add(ct, GFP_KERNEL);
 if (help == ((void*)0)) {
  nf_conntrack_helper_put(helper);
  return -ENOMEM;
 }

 help->helper = helper;
 return 0;
}
