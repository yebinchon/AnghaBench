
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; } ;
struct pep_sock {int pipe_handle; int init_enable; } ;


 int PAD ;
 int PNS_PEP_CONNECT_REQ ;
 int PN_PIPE_INVALID_HANDLE ;
 int TCP_SYN_SENT ;
 struct pep_sock* pep_sk (struct sock*) ;
 int pipe_handler_request (struct sock*,int ,int ,int *,int) ;

__attribute__((used)) static int pep_sock_connect(struct sock *sk, struct sockaddr *addr, int len)
{
 struct pep_sock *pn = pep_sk(sk);
 int err;
 u8 data[4] = { 0 , PAD, PAD, PAD };

 if (pn->pipe_handle == PN_PIPE_INVALID_HANDLE)
  pn->pipe_handle = 1;

 err = pipe_handler_request(sk, PNS_PEP_CONNECT_REQ,
    pn->init_enable, data, 4);
 if (err) {
  pn->pipe_handle = PN_PIPE_INVALID_HANDLE;
  return err;
 }

 sk->sk_state = TCP_SYN_SENT;

 return 0;
}
