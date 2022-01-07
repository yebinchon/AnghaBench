
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_llcp_sock {int local; int * parent; int accept_queue; int tx_pending_queue; int tx_queue; int service_name; } ;


 int kfree (int ) ;
 int list_del_init (int *) ;
 int nfc_llcp_local_put (int ) ;
 int skb_queue_purge (int *) ;

void nfc_llcp_sock_free(struct nfc_llcp_sock *sock)
{
 kfree(sock->service_name);

 skb_queue_purge(&sock->tx_queue);
 skb_queue_purge(&sock->tx_pending_queue);

 list_del_init(&sock->accept_queue);

 sock->parent = ((void*)0);

 nfc_llcp_local_put(sock->local);
}
