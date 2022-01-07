
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlbl_audit {int sessionid; int loginuid; int secid; } ;


 int audit_get_loginuid (int ) ;
 int audit_get_sessionid (int ) ;
 int current ;
 int security_task_getsecid (int ,int *) ;

__attribute__((used)) static inline void netlbl_netlink_auditinfo(struct sk_buff *skb,
         struct netlbl_audit *audit_info)
{
 security_task_getsecid(current, &audit_info->secid);
 audit_info->loginuid = audit_get_loginuid(current);
 audit_info->sessionid = audit_get_sessionid(current);
}
