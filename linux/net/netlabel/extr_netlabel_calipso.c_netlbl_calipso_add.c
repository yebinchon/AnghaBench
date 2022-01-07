
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlbl_audit {int dummy; } ;
struct genl_info {int * attrs; } ;



 int EINVAL ;
 size_t NLBL_CALIPSO_A_DOI ;
 size_t NLBL_CALIPSO_A_MTYPE ;
 int atomic_inc (int *) ;
 int netlabel_mgmt_protocount ;
 int netlbl_calipso_add_pass (struct genl_info*,struct netlbl_audit*) ;
 int netlbl_netlink_auditinfo (struct sk_buff*,struct netlbl_audit*) ;
 int nla_get_u32 (int ) ;

__attribute__((used)) static int netlbl_calipso_add(struct sk_buff *skb, struct genl_info *info)

{
 int ret_val = -EINVAL;
 struct netlbl_audit audit_info;

 if (!info->attrs[NLBL_CALIPSO_A_DOI] ||
     !info->attrs[NLBL_CALIPSO_A_MTYPE])
  return -EINVAL;

 netlbl_netlink_auditinfo(skb, &audit_info);
 switch (nla_get_u32(info->attrs[NLBL_CALIPSO_A_MTYPE])) {
 case 128:
  ret_val = netlbl_calipso_add_pass(info, &audit_info);
  break;
 }
 if (ret_val == 0)
  atomic_inc(&netlabel_mgmt_protocount);

 return ret_val;
}
