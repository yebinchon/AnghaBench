
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_peek_off; } ;



int sk_set_peek_off(struct sock *sk, int val)
{
 sk->sk_peek_off = val;
 return 0;
}
