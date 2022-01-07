
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct dst_entry {int dummy; } ;


 struct dst_entry* __sk_dst_check (struct sock*,int ) ;

__attribute__((used)) static inline
struct dst_entry *__inet6_csk_dst_check(struct sock *sk, u32 cookie)
{
 return __sk_dst_check(sk, cookie);
}
