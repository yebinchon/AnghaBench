
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct packet_sock {int dummy; } ;



__attribute__((used)) static struct packet_sock *pkt_sk(struct sock *sk)
{
 return (struct packet_sock *)sk;
}
