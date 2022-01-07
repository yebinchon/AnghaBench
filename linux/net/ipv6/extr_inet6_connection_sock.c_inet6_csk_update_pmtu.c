
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct flowi6 {int dummy; } ;
struct dst_entry {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* update_pmtu ) (struct dst_entry*,struct sock*,int *,int ) ;} ;


 scalar_t__ IS_ERR (struct dst_entry*) ;
 struct dst_entry* inet6_csk_route_socket (struct sock*,struct flowi6*) ;
 int stub1 (struct dst_entry*,struct sock*,int *,int ) ;

struct dst_entry *inet6_csk_update_pmtu(struct sock *sk, u32 mtu)
{
 struct flowi6 fl6;
 struct dst_entry *dst = inet6_csk_route_socket(sk, &fl6);

 if (IS_ERR(dst))
  return ((void*)0);
 dst->ops->update_pmtu(dst, sk, ((void*)0), mtu);

 dst = inet6_csk_route_socket(sk, &fl6);
 return IS_ERR(dst) ? ((void*)0) : dst;
}
