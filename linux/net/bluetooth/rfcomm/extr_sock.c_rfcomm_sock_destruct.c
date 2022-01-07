
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_write_queue; int sk_receive_queue; } ;
struct rfcomm_dlc {struct sock* owner; } ;
struct TYPE_2__ {struct rfcomm_dlc* dlc; } ;


 int BT_DBG (char*,struct sock*,struct rfcomm_dlc*) ;
 int rfcomm_dlc_lock (struct rfcomm_dlc*) ;
 int rfcomm_dlc_put (struct rfcomm_dlc*) ;
 int rfcomm_dlc_unlock (struct rfcomm_dlc*) ;
 TYPE_1__* rfcomm_pi (struct sock*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void rfcomm_sock_destruct(struct sock *sk)
{
 struct rfcomm_dlc *d = rfcomm_pi(sk)->dlc;

 BT_DBG("sk %p dlc %p", sk, d);

 skb_queue_purge(&sk->sk_receive_queue);
 skb_queue_purge(&sk->sk_write_queue);

 rfcomm_dlc_lock(d);
 rfcomm_pi(sk)->dlc = ((void*)0);


 if (d->owner == sk)
  d->owner = ((void*)0);
 rfcomm_dlc_unlock(d);

 rfcomm_dlc_put(d);
}
