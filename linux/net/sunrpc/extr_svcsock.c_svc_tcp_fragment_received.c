
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_sock {scalar_t__ sk_reclen; scalar_t__ sk_tcplen; } ;


 int dprintk (char*,char*,int ) ;
 scalar_t__ svc_sock_final_rec (struct svc_sock*) ;
 int svc_sock_reclen (struct svc_sock*) ;

__attribute__((used)) static void svc_tcp_fragment_received(struct svc_sock *svsk)
{

 dprintk("svc: TCP %s record (%d bytes)\n",
  svc_sock_final_rec(svsk) ? "final" : "nonfinal",
  svc_sock_reclen(svsk));
 svsk->sk_tcplen = 0;
 svsk->sk_reclen = 0;
}
