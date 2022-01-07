
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct dgram_sock {int want_ack; scalar_t__ want_lqi; } ;


 struct dgram_sock* dgram_sk (struct sock*) ;

__attribute__((used)) static int dgram_init(struct sock *sk)
{
 struct dgram_sock *ro = dgram_sk(sk);

 ro->want_ack = 1;
 ro->want_lqi = 0;
 return 0;
}
