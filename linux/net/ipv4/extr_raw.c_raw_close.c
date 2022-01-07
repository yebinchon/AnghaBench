
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int ip_ra_control (struct sock*,int ,int *) ;
 int sk_common_release (struct sock*) ;

__attribute__((used)) static void raw_close(struct sock *sk, long timeout)
{



 ip_ra_control(sk, 0, ((void*)0));

 sk_common_release(sk);
}
