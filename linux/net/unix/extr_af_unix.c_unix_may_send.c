
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 scalar_t__ unix_our_peer (struct sock*,struct sock*) ;
 int * unix_peer (struct sock*) ;

__attribute__((used)) static inline int unix_may_send(struct sock *sk, struct sock *osk)
{
 return unix_peer(osk) == ((void*)0) || unix_our_peer(sk, osk);
}
