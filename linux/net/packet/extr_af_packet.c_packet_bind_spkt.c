
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr {int sa_data; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int num; } ;


 int EINVAL ;
 int memcpy (char*,int ,int) ;
 int packet_do_bind (struct sock*,char*,int ,int ) ;
 TYPE_1__* pkt_sk (struct sock*) ;

__attribute__((used)) static int packet_bind_spkt(struct socket *sock, struct sockaddr *uaddr,
       int addr_len)
{
 struct sock *sk = sock->sk;
 char name[sizeof(uaddr->sa_data) + 1];





 if (addr_len != sizeof(struct sockaddr))
  return -EINVAL;



 memcpy(name, uaddr->sa_data, sizeof(uaddr->sa_data));
 name[sizeof(uaddr->sa_data)] = 0;

 return packet_do_bind(sk, name, 0, pkt_sk(sk)->num);
}
