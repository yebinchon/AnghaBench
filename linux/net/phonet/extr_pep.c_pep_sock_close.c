
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; scalar_t__ sk_backlog_rcv; } ;
struct pep_sock {int ifindex; } ;


 int PAD ;
 int PNS_PEP_DISCONNECT_REQ ;
 int TCPF_ESTABLISHED ;
 int TCPF_SYN_RECV ;
 int TCP_CLOSE ;
 int gprs_detach (struct sock*) ;
 int lock_sock (struct sock*) ;
 struct pep_sock* pep_sk (struct sock*) ;
 scalar_t__ pipe_do_rcv ;
 int pipe_do_remove (struct sock*) ;
 int pipe_handler_request (struct sock*,int ,int ,int *,int ) ;
 int release_sock (struct sock*) ;
 int sk_common_release (struct sock*) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void pep_sock_close(struct sock *sk, long timeout)
{
 struct pep_sock *pn = pep_sk(sk);
 int ifindex = 0;

 sock_hold(sk);
 sk_common_release(sk);

 lock_sock(sk);
 if ((1 << sk->sk_state) & (TCPF_SYN_RECV|TCPF_ESTABLISHED)) {
  if (sk->sk_backlog_rcv == pipe_do_rcv)

   pipe_do_remove(sk);
  else
   pipe_handler_request(sk, PNS_PEP_DISCONNECT_REQ, PAD,
      ((void*)0), 0);
 }
 sk->sk_state = TCP_CLOSE;

 ifindex = pn->ifindex;
 pn->ifindex = 0;
 release_sock(sk);

 if (ifindex)
  gprs_detach(sk);
 sock_put(sk);
}
