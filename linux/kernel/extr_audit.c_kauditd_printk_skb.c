
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; } ;


 scalar_t__ AUDIT_EOE ;
 char* nlmsg_data (struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_hdr (struct sk_buff*) ;
 int pr_notice (char*,scalar_t__,char*) ;
 scalar_t__ printk_ratelimit () ;

__attribute__((used)) static void kauditd_printk_skb(struct sk_buff *skb)
{
 struct nlmsghdr *nlh = nlmsg_hdr(skb);
 char *data = nlmsg_data(nlh);

 if (nlh->nlmsg_type != AUDIT_EOE && printk_ratelimit())
  pr_notice("type=%d %s\n", nlh->nlmsg_type, data);
}
