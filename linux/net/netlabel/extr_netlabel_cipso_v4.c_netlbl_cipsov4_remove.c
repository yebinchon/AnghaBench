
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct netlbl_domhsh_walk_arg {int doi; struct netlbl_audit* audit_info; } ;
struct netlbl_audit {int dummy; } ;
struct genl_info {int * attrs; } ;


 int EINVAL ;
 int ENOENT ;
 size_t NLBL_CIPSOV4_A_DOI ;
 int atomic_dec (int *) ;
 int cipso_v4_doi_remove (int ,struct netlbl_audit*) ;
 int netlabel_mgmt_protocount ;
 int netlbl_cipsov4_remove_cb ;
 int netlbl_domhsh_walk (int *,int *,int ,struct netlbl_domhsh_walk_arg*) ;
 int netlbl_netlink_auditinfo (struct sk_buff*,struct netlbl_audit*) ;
 int nla_get_u32 (int ) ;

__attribute__((used)) static int netlbl_cipsov4_remove(struct sk_buff *skb, struct genl_info *info)
{
 int ret_val = -EINVAL;
 struct netlbl_domhsh_walk_arg cb_arg;
 struct netlbl_audit audit_info;
 u32 skip_bkt = 0;
 u32 skip_chain = 0;

 if (!info->attrs[NLBL_CIPSOV4_A_DOI])
  return -EINVAL;

 netlbl_netlink_auditinfo(skb, &audit_info);
 cb_arg.doi = nla_get_u32(info->attrs[NLBL_CIPSOV4_A_DOI]);
 cb_arg.audit_info = &audit_info;
 ret_val = netlbl_domhsh_walk(&skip_bkt, &skip_chain,
         netlbl_cipsov4_remove_cb, &cb_arg);
 if (ret_val == 0 || ret_val == -ENOENT) {
  ret_val = cipso_v4_doi_remove(cb_arg.doi, &audit_info);
  if (ret_val == 0)
   atomic_dec(&netlabel_mgmt_protocount);
 }

 return ret_val;
}
