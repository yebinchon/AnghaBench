
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int users; } ;
typedef int gfp_t ;


 int ESRCH ;
 int nlmsg_multicast (struct sock*,struct sk_buff*,int,unsigned int,int ) ;
 int nlmsg_unicast (struct sock*,struct sk_buff*,int) ;
 int refcount_inc (int *) ;

int nlmsg_notify(struct sock *sk, struct sk_buff *skb, u32 portid,
   unsigned int group, int report, gfp_t flags)
{
 int err = 0;

 if (group) {
  int exclude_portid = 0;

  if (report) {
   refcount_inc(&skb->users);
   exclude_portid = portid;
  }



  err = nlmsg_multicast(sk, skb, exclude_portid, group, flags);
 }

 if (report) {
  int err2;

  err2 = nlmsg_unicast(sk, skb, portid);
  if (!err || err == -ESRCH)
   err = err2;
 }

 return err;
}
