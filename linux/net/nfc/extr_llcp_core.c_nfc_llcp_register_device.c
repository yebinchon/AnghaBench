
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {int lock; } ;
struct TYPE_4__ {int lock; } ;
struct nfc_llcp_local {int lto; int local_wks; int list; int sdreq_timeout_work; int sdreq_timer; int pending_sdreqs; int sdreq_lock; int remote_lto; int remote_miu; int miux; int rw; TYPE_3__ raw_sockets; TYPE_2__ connecting_sockets; TYPE_1__ sockets; int timeout_work; int rx_work; int * rx_pending; int tx_work; int tx_queue; int link_timer; int sdp_lock; int ref; struct nfc_dev* dev; } ;
struct nfc_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int LLCP_DEFAULT_LTO ;
 int LLCP_DEFAULT_MIU ;
 int LLCP_MAX_MIUX ;
 int LLCP_MAX_RW ;
 int cpu_to_be16 (int ) ;
 int kref_init (int *) ;
 struct nfc_llcp_local* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int llcp_devices ;
 int mutex_init (int *) ;
 int nfc_llcp_build_gb (struct nfc_llcp_local*) ;
 int nfc_llcp_rx_work ;
 int nfc_llcp_sdreq_timeout_work ;
 int nfc_llcp_sdreq_timer ;
 int nfc_llcp_symm_timer ;
 int nfc_llcp_timeout_work ;
 int nfc_llcp_tx_work ;
 int rwlock_init (int *) ;
 int skb_queue_head_init (int *) ;
 int timer_setup (int *,int ,int ) ;

int nfc_llcp_register_device(struct nfc_dev *ndev)
{
 struct nfc_llcp_local *local;

 local = kzalloc(sizeof(struct nfc_llcp_local), GFP_KERNEL);
 if (local == ((void*)0))
  return -ENOMEM;

 local->dev = ndev;
 INIT_LIST_HEAD(&local->list);
 kref_init(&local->ref);
 mutex_init(&local->sdp_lock);
 timer_setup(&local->link_timer, nfc_llcp_symm_timer, 0);

 skb_queue_head_init(&local->tx_queue);
 INIT_WORK(&local->tx_work, nfc_llcp_tx_work);

 local->rx_pending = ((void*)0);
 INIT_WORK(&local->rx_work, nfc_llcp_rx_work);

 INIT_WORK(&local->timeout_work, nfc_llcp_timeout_work);

 rwlock_init(&local->sockets.lock);
 rwlock_init(&local->connecting_sockets.lock);
 rwlock_init(&local->raw_sockets.lock);

 local->lto = 150;
 local->rw = LLCP_MAX_RW;
 local->miux = cpu_to_be16(LLCP_MAX_MIUX);
 local->local_wks = 0x1;

 nfc_llcp_build_gb(local);

 local->remote_miu = LLCP_DEFAULT_MIU;
 local->remote_lto = LLCP_DEFAULT_LTO;

 mutex_init(&local->sdreq_lock);
 INIT_HLIST_HEAD(&local->pending_sdreqs);
 timer_setup(&local->sdreq_timer, nfc_llcp_sdreq_timer, 0);
 INIT_WORK(&local->sdreq_timeout_work, nfc_llcp_sdreq_timeout_work);

 list_add(&local->list, &llcp_devices);

 return 0;
}
