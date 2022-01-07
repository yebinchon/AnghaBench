
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int sk_common_release (struct sock*) ;

__attribute__((used)) static void raw_close(struct sock *sk, long timeout)
{
 sk_common_release(sk);
}
