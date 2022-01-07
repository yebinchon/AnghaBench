
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_bound_dev_if; TYPE_1__* sk_prot; } ;
struct net {int user_ns; } ;
struct TYPE_2__ {int (* rehash ) (struct sock*) ;} ;


 int CAP_NET_RAW ;
 int EINVAL ;
 int ENOPROTOOPT ;
 int EPERM ;
 int ns_capable (int ,int ) ;
 int sk_dst_reset (struct sock*) ;
 struct net* sock_net (struct sock*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int sock_setbindtodevice_locked(struct sock *sk, int ifindex)
{
 int ret = -ENOPROTOOPT;
 return ret;
}
