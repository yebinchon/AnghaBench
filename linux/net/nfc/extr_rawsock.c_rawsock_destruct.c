
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; int sk_receive_queue; } ;
struct TYPE_2__ {int dev; int target_idx; } ;


 int NFC_TARGET_MODE_IDLE ;
 int SOCK_DEAD ;
 scalar_t__ TCP_ESTABLISHED ;
 int nfc_deactivate_target (int ,int ,int ) ;
 int nfc_put_device (int ) ;
 TYPE_1__* nfc_rawsock (struct sock*) ;
 int pr_debug (char*,struct sock*) ;
 int pr_err (char*,struct sock*) ;
 int skb_queue_purge (int *) ;
 int sock_flag (struct sock*,int ) ;

__attribute__((used)) static void rawsock_destruct(struct sock *sk)
{
 pr_debug("sk=%p\n", sk);

 if (sk->sk_state == TCP_ESTABLISHED) {
  nfc_deactivate_target(nfc_rawsock(sk)->dev,
          nfc_rawsock(sk)->target_idx,
          NFC_TARGET_MODE_IDLE);
  nfc_put_device(nfc_rawsock(sk)->dev);
 }

 skb_queue_purge(&sk->sk_receive_queue);

 if (!sock_flag(sk, SOCK_DEAD)) {
  pr_err("Freeing alive NFC raw socket %p\n", sk);
  return;
 }
}
