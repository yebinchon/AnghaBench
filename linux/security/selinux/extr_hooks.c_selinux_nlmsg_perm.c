
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sock {int sk_protocol; struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int sclass; } ;
struct sk_buff {scalar_t__ len; } ;
struct nlmsghdr {int nlmsg_type; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int comm; } ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ NLMSG_HDRLEN ;
 TYPE_1__* current ;
 int enforcing_enabled (int *) ;
 struct nlmsghdr* nlmsg_hdr (struct sk_buff*) ;
 int pr_warn_ratelimited (char*,int ,int ,int ,int ,int ) ;
 TYPE_2__* secclass_map ;
 scalar_t__ security_get_allow_unknown (int *) ;
 int selinux_nlmsg_lookup (int,int ,int *) ;
 int selinux_state ;
 int sock_has_perm (struct sock*,int ) ;
 int task_pid_nr (TYPE_1__*) ;

__attribute__((used)) static int selinux_nlmsg_perm(struct sock *sk, struct sk_buff *skb)
{
 int err = 0;
 u32 perm;
 struct nlmsghdr *nlh;
 struct sk_security_struct *sksec = sk->sk_security;

 if (skb->len < NLMSG_HDRLEN) {
  err = -EINVAL;
  goto out;
 }
 nlh = nlmsg_hdr(skb);

 err = selinux_nlmsg_lookup(sksec->sclass, nlh->nlmsg_type, &perm);
 if (err) {
  if (err == -EINVAL) {
   pr_warn_ratelimited("SELinux: unrecognized netlink"
          " message: protocol=%hu nlmsg_type=%hu sclass=%s"
          " pig=%d comm=%s\n",
          sk->sk_protocol, nlh->nlmsg_type,
          secclass_map[sksec->sclass - 1].name,
          task_pid_nr(current), current->comm);
   if (!enforcing_enabled(&selinux_state) ||
       security_get_allow_unknown(&selinux_state))
    err = 0;
  }


  if (err == -ENOENT)
   err = 0;
  goto out;
 }

 err = sock_has_perm(sk, perm);
out:
 return err;
}
