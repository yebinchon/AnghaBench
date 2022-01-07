
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct dgram_sock {scalar_t__ connected; } ;


 struct dgram_sock* dgram_sk (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int dgram_disconnect(struct sock *sk, int flags)
{
 struct dgram_sock *ro = dgram_sk(sk);

 lock_sock(sk);
 ro->connected = 0;
 release_sock(sk);

 return 0;
}
