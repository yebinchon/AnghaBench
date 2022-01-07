
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_flags; } ;


 int NLM_F_ACK ;
 int audit_ctl_lock () ;
 int audit_ctl_unlock () ;
 int audit_receive_msg (struct sk_buff*,struct nlmsghdr*) ;
 int netlink_ack (struct sk_buff*,struct nlmsghdr*,int,int *) ;
 struct nlmsghdr* nlmsg_hdr (struct sk_buff*) ;
 struct nlmsghdr* nlmsg_next (struct nlmsghdr*,int*) ;
 scalar_t__ nlmsg_ok (struct nlmsghdr*,int) ;

__attribute__((used)) static void audit_receive(struct sk_buff *skb)
{
 struct nlmsghdr *nlh;




 int len;
 int err;

 nlh = nlmsg_hdr(skb);
 len = skb->len;

 audit_ctl_lock();
 while (nlmsg_ok(nlh, len)) {
  err = audit_receive_msg(skb, nlh);

  if (err || (nlh->nlmsg_flags & NLM_F_ACK))
   netlink_ack(skb, nlh, err, ((void*)0));

  nlh = nlmsg_next(nlh, &len);
 }
 audit_ctl_unlock();
}
