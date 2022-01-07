
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 struct sock* unix_peer (struct sock*) ;

__attribute__((used)) static inline int unix_our_peer(struct sock *sk, struct sock *osk)
{
 return unix_peer(osk) == sk;
}
