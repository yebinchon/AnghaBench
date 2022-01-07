
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct netlink_skb_parms {int flags; TYPE_2__* sk; } ;
struct TYPE_4__ {TYPE_1__* sk_socket; } ;
struct TYPE_3__ {int file; } ;


 int NETLINK_SKB_DST ;
 scalar_t__ file_ns_capable (int ,struct user_namespace*,int) ;
 scalar_t__ ns_capable (struct user_namespace*,int) ;

bool __netlink_ns_capable(const struct netlink_skb_parms *nsp,
   struct user_namespace *user_ns, int cap)
{
 return ((nsp->flags & NETLINK_SKB_DST) ||
  file_ns_capable(nsp->sk->sk_socket->file, user_ns, cap)) &&
  ns_capable(user_ns, cap);
}
