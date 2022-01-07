
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlbl_audit {int dummy; } ;
struct genl_info {int dummy; } ;


 int AF_UNSPEC ;
 int netlbl_domhsh_remove_default (int ,struct netlbl_audit*) ;
 int netlbl_netlink_auditinfo (struct sk_buff*,struct netlbl_audit*) ;

__attribute__((used)) static int netlbl_mgmt_removedef(struct sk_buff *skb, struct genl_info *info)
{
 struct netlbl_audit audit_info;

 netlbl_netlink_auditinfo(skb, &audit_info);

 return netlbl_domhsh_remove_default(AF_UNSPEC, &audit_info);
}
