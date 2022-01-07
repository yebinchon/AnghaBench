
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct nfc_llcp_sock {struct sock* parent; int accept_queue; } ;


 int list_add_tail (int *,int *) ;
 struct nfc_llcp_sock* nfc_llcp_sock (struct sock*) ;
 int sk_acceptq_added (struct sock*) ;
 int sock_hold (struct sock*) ;

void nfc_llcp_accept_enqueue(struct sock *parent, struct sock *sk)
{
 struct nfc_llcp_sock *llcp_sock = nfc_llcp_sock(sk);
 struct nfc_llcp_sock *llcp_sock_parent = nfc_llcp_sock(parent);


 sock_hold(sk);

 list_add_tail(&llcp_sock->accept_queue,
        &llcp_sock_parent->accept_queue);
 llcp_sock->parent = parent;
 sk_acceptq_added(parent);
}
