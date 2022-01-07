
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; int sk_receive_queue; } ;
struct nfc_llcp_sock {int dev; } ;


 scalar_t__ LLCP_CONNECTED ;
 int SOCK_DEAD ;
 struct nfc_llcp_sock* nfc_llcp_sock (struct sock*) ;
 int nfc_llcp_sock_free (struct nfc_llcp_sock*) ;
 int nfc_put_device (int ) ;
 int pr_debug (char*,struct sock*) ;
 int pr_err (char*,struct sock*) ;
 int skb_queue_purge (int *) ;
 int sock_flag (struct sock*,int ) ;

__attribute__((used)) static void llcp_sock_destruct(struct sock *sk)
{
 struct nfc_llcp_sock *llcp_sock = nfc_llcp_sock(sk);

 pr_debug("%p\n", sk);

 if (sk->sk_state == LLCP_CONNECTED)
  nfc_put_device(llcp_sock->dev);

 skb_queue_purge(&sk->sk_receive_queue);

 nfc_llcp_sock_free(llcp_sock);

 if (!sock_flag(sk, SOCK_DEAD)) {
  pr_err("Freeing alive NFC LLCP socket %p\n", sk);
  return;
 }
}
