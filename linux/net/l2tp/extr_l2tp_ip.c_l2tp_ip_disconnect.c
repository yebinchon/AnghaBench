
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int SOCK_ZAPPED ;
 int __udp_disconnect (struct sock*,int) ;
 scalar_t__ sock_flag (struct sock*,int ) ;

__attribute__((used)) static int l2tp_ip_disconnect(struct sock *sk, int flags)
{
 if (sock_flag(sk, SOCK_ZAPPED))
  return 0;

 return __udp_disconnect(sk, flags);
}
