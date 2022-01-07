
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct sock {int sk_state; } ;


 int PAD ;
 int PNS_PEP_ENABLE_REQ ;
 int TCP_SYN_SENT ;
 int pipe_handler_request (struct sock*,int ,int ,int *,int ) ;

__attribute__((used)) static int pep_sock_enable(struct sock *sk, struct sockaddr *addr, int len)
{
 int err;

 err = pipe_handler_request(sk, PNS_PEP_ENABLE_REQ, PAD,
    ((void*)0), 0);
 if (err)
  return err;

 sk->sk_state = TCP_SYN_SENT;

 return 0;
}
