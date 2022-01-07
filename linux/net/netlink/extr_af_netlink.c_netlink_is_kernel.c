
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int NETLINK_F_KERNEL_SOCKET ;
 TYPE_1__* nlk_sk (struct sock*) ;

__attribute__((used)) static inline int netlink_is_kernel(struct sock *sk)
{
 return nlk_sk(sk)->flags & NETLINK_F_KERNEL_SOCKET;
}
