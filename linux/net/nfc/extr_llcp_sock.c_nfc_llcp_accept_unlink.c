
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; } ;
struct nfc_llcp_sock {int * parent; int accept_queue; } ;


 int list_del_init (int *) ;
 struct nfc_llcp_sock* nfc_llcp_sock (struct sock*) ;
 int pr_debug (char*,int ) ;
 int sk_acceptq_removed (int *) ;
 int sock_put (struct sock*) ;

void nfc_llcp_accept_unlink(struct sock *sk)
{
 struct nfc_llcp_sock *llcp_sock = nfc_llcp_sock(sk);

 pr_debug("state %d\n", sk->sk_state);

 list_del_init(&llcp_sock->accept_queue);
 sk_acceptq_removed(llcp_sock->parent);
 llcp_sock->parent = ((void*)0);

 sock_put(sk);
}
