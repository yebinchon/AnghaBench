
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veno {int basertt; int inc; } ;
struct sock {int dummy; } ;


 struct veno* inet_csk_ca (struct sock*) ;
 int veno_enable (struct sock*) ;

__attribute__((used)) static void tcp_veno_init(struct sock *sk)
{
 struct veno *veno = inet_csk_ca(sk);

 veno->basertt = 0x7fffffff;
 veno->inc = 1;
 veno_enable(sk);
}
