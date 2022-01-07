
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veno {scalar_t__ doing_veno_now; } ;
struct sock {int dummy; } ;


 struct veno* inet_csk_ca (struct sock*) ;

__attribute__((used)) static inline void veno_disable(struct sock *sk)
{
 struct veno *veno = inet_csk_ca(sk);


 veno->doing_veno_now = 0;
}
