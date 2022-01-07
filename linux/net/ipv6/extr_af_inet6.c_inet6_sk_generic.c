
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sock {TYPE_1__* sk_prot; } ;
struct ipv6_pinfo {int dummy; } ;
struct TYPE_2__ {int obj_size; } ;



__attribute__((used)) static __inline__ struct ipv6_pinfo *inet6_sk_generic(struct sock *sk)
{
 const int offset = sk->sk_prot->obj_size - sizeof(struct ipv6_pinfo);

 return (struct ipv6_pinfo *)(((u8 *)sk) + offset);
}
