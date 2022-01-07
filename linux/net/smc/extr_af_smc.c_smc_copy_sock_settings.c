
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {unsigned long sk_flags; int sk_err; int sk_bound_dev_if; int sk_rcvlowat; int sk_priority; int sk_mark; int sk_rcvtimeo; int sk_sndtimeo; int sk_rcvbuf; int sk_sndbuf; int sk_type; } ;



__attribute__((used)) static void smc_copy_sock_settings(struct sock *nsk, struct sock *osk,
       unsigned long mask)
{

 nsk->sk_type = osk->sk_type;
 nsk->sk_sndbuf = osk->sk_sndbuf;
 nsk->sk_rcvbuf = osk->sk_rcvbuf;
 nsk->sk_sndtimeo = osk->sk_sndtimeo;
 nsk->sk_rcvtimeo = osk->sk_rcvtimeo;
 nsk->sk_mark = osk->sk_mark;
 nsk->sk_priority = osk->sk_priority;
 nsk->sk_rcvlowat = osk->sk_rcvlowat;
 nsk->sk_bound_dev_if = osk->sk_bound_dev_if;
 nsk->sk_err = osk->sk_err;

 nsk->sk_flags &= ~mask;
 nsk->sk_flags |= osk->sk_flags & mask;
}
