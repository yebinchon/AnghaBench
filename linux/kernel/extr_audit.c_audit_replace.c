
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pid {int dummy; } ;
typedef int pvnr ;
typedef int pid_t ;


 int AUDIT_REPLACE ;
 int ENOMEM ;
 struct sk_buff* audit_make_reply (int ,int ,int ,int ,int *,int) ;
 int auditd_send_unicast_skb (struct sk_buff*) ;
 int pid_vnr (struct pid*) ;

__attribute__((used)) static int audit_replace(struct pid *pid)
{
 pid_t pvnr;
 struct sk_buff *skb;

 pvnr = pid_vnr(pid);
 skb = audit_make_reply(0, AUDIT_REPLACE, 0, 0, &pvnr, sizeof(pvnr));
 if (!skb)
  return -ENOMEM;
 return auditd_send_unicast_skb(skb);
}
