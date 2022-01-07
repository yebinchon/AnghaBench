
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int o_osd; struct ceph_osd_client* o_osdc; } ;
struct ceph_osd_client {int osdmap; int req_mempool; int msgpool_op; int msgpool_op_reply; void* notify_wq; struct ceph_client* client; int osds_timeout_work; int timeout_work; void* completion_wq; void* linger_map_checks; void* map_checks; void* linger_requests; int last_linger_id; TYPE_2__ homeless_osd; int osd_lru_lock; int osd_lru; void* osds; int lock; } ;
struct ceph_client {TYPE_1__* options; } ;
struct TYPE_3__ {int osd_idle_ttl; int osd_keepalive_timeout; } ;


 int CEPH_HOMELESS_OSD ;
 int CEPH_LINGER_ID_START ;
 int CEPH_MSG_OSD_OP ;
 int CEPH_MSG_OSD_OPREPLY ;
 int CEPH_OSD_SLAB_OPS ;
 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 void* RB_ROOT ;
 int ceph_msgpool_destroy (int *) ;
 int ceph_msgpool_init (int *,int ,int ,int ,int,char*) ;
 int ceph_osd_request_cache ;
 int ceph_osdmap_alloc () ;
 int ceph_osdmap_destroy (int ) ;
 void* create_singlethread_workqueue (char*) ;
 int destroy_workqueue (void*) ;
 int dout (char*) ;
 int handle_osds_timeout ;
 int handle_timeout ;
 int init_rwsem (int *) ;
 int mempool_create_slab_pool (int,int ) ;
 int mempool_destroy (int ) ;
 int osd_init (TYPE_2__*) ;
 int round_jiffies_relative (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_init (int *) ;

int ceph_osdc_init(struct ceph_osd_client *osdc, struct ceph_client *client)
{
 int err;

 dout("init\n");
 osdc->client = client;
 init_rwsem(&osdc->lock);
 osdc->osds = RB_ROOT;
 INIT_LIST_HEAD(&osdc->osd_lru);
 spin_lock_init(&osdc->osd_lru_lock);
 osd_init(&osdc->homeless_osd);
 osdc->homeless_osd.o_osdc = osdc;
 osdc->homeless_osd.o_osd = CEPH_HOMELESS_OSD;
 osdc->last_linger_id = CEPH_LINGER_ID_START;
 osdc->linger_requests = RB_ROOT;
 osdc->map_checks = RB_ROOT;
 osdc->linger_map_checks = RB_ROOT;
 INIT_DELAYED_WORK(&osdc->timeout_work, handle_timeout);
 INIT_DELAYED_WORK(&osdc->osds_timeout_work, handle_osds_timeout);

 err = -ENOMEM;
 osdc->osdmap = ceph_osdmap_alloc();
 if (!osdc->osdmap)
  goto out;

 osdc->req_mempool = mempool_create_slab_pool(10,
           ceph_osd_request_cache);
 if (!osdc->req_mempool)
  goto out_map;

 err = ceph_msgpool_init(&osdc->msgpool_op, CEPH_MSG_OSD_OP,
    PAGE_SIZE, CEPH_OSD_SLAB_OPS, 10, "osd_op");
 if (err < 0)
  goto out_mempool;
 err = ceph_msgpool_init(&osdc->msgpool_op_reply, CEPH_MSG_OSD_OPREPLY,
    PAGE_SIZE, CEPH_OSD_SLAB_OPS, 10,
    "osd_op_reply");
 if (err < 0)
  goto out_msgpool;

 err = -ENOMEM;
 osdc->notify_wq = create_singlethread_workqueue("ceph-watch-notify");
 if (!osdc->notify_wq)
  goto out_msgpool_reply;

 osdc->completion_wq = create_singlethread_workqueue("ceph-completion");
 if (!osdc->completion_wq)
  goto out_notify_wq;

 schedule_delayed_work(&osdc->timeout_work,
         osdc->client->options->osd_keepalive_timeout);
 schedule_delayed_work(&osdc->osds_timeout_work,
     round_jiffies_relative(osdc->client->options->osd_idle_ttl));

 return 0;

out_notify_wq:
 destroy_workqueue(osdc->notify_wq);
out_msgpool_reply:
 ceph_msgpool_destroy(&osdc->msgpool_op_reply);
out_msgpool:
 ceph_msgpool_destroy(&osdc->msgpool_op);
out_mempool:
 mempool_destroy(osdc->req_mempool);
out_map:
 ceph_osdmap_destroy(osdc->osdmap);
out:
 return err;
}
