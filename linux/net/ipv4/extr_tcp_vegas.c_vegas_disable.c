
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vegas {scalar_t__ doing_vegas_now; } ;
struct sock {int dummy; } ;


 struct vegas* inet_csk_ca (struct sock*) ;

__attribute__((used)) static inline void vegas_disable(struct sock *sk)
{
 struct vegas *vegas = inet_csk_ca(sk);

 vegas->doing_vegas_now = 0;
}
