
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_llcp_local {int pending_sdreqs; int sdreq_timeout_work; int sdreq_timer; int rx_pending; int timeout_work; int rx_work; int tx_work; int tx_queue; int link_timer; } ;


 int ENXIO ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int kfree_skb (int ) ;
 int nfc_llcp_free_sdp_tlv_list (int *) ;
 int nfc_llcp_socket_release (struct nfc_llcp_local*,int,int ) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void local_cleanup(struct nfc_llcp_local *local)
{
 nfc_llcp_socket_release(local, 0, ENXIO);
 del_timer_sync(&local->link_timer);
 skb_queue_purge(&local->tx_queue);
 cancel_work_sync(&local->tx_work);
 cancel_work_sync(&local->rx_work);
 cancel_work_sync(&local->timeout_work);
 kfree_skb(local->rx_pending);
 del_timer_sync(&local->sdreq_timer);
 cancel_work_sync(&local->sdreq_timeout_work);
 nfc_llcp_free_sdp_tlv_list(&local->pending_sdreqs);
}
