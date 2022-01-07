
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hlist_head {int dummy; } ;
struct TYPE_2__ {void* dead_node; void* new_master; int event; scalar_t__ state; int node_data; int resources; } ;
struct dlm_ctxt {struct dlm_ctxt* name; struct hlist_head** lockres_hash; struct hlist_head** master_hash; int dlm_refs; int dlm_eviction_callbacks; int dlm_state; int dispatched_work; int work_list; int work_lock; int * mle_cur_count; int * mle_tot_count; int res_cur_count; int res_tot_count; TYPE_1__ reco; scalar_t__ migrate_done; int dlm_join_events; int joining_node; int mle_hb_events; int migration_wq; int ast_wq; int dlm_reco_thread_wq; int dlm_thread_wq; int * dlm_worker; int * dlm_reco_thread_task; int * dlm_thread_task; int * domain_map; int * live_nodes_map; int * recovery_map; int pending_basts; int pending_asts; int tracking_list; int dlm_domain_handlers; int purge_list; int dirty_list; int list; int track_lock; int ast_lock; int master_lock; int spinlock; int node_num; int key; } ;


 int DLM_CTXT_NEW ;
 int DLM_HASH_BUCKETS ;
 int DLM_HASH_PAGES ;
 int DLM_LOCK_RES_OWNER_UNKNOWN ;
 int DLM_MLE_NUM_TYPES ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 void* O2NM_INVALID_NODE_NUM ;
 int atomic_set (int *,int ) ;
 scalar_t__ dlm_alloc_pagevec (int ) ;
 int dlm_create_debugfs_subroot (struct dlm_ctxt*) ;
 int dlm_dispatch_work ;
 int dlm_free_pagevec (void**,int ) ;
 int dlm_lockres_hash (struct dlm_ctxt*,int) ;
 int dlm_master_hash (struct dlm_ctxt*,int) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct dlm_ctxt*) ;
 int kref_init (int *) ;
 int kref_read (int *) ;
 struct dlm_ctxt* kstrdup (char const*,int ) ;
 struct dlm_ctxt* kzalloc (int,int ) ;
 int memset (int *,int ,int) ;
 int mlog (int ,char*,int ,...) ;
 int mlog_errno (int) ;
 int o2nm_this_node () ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct dlm_ctxt *dlm_alloc_ctxt(const char *domain,
    u32 key)
{
 int i;
 int ret;
 struct dlm_ctxt *dlm = ((void*)0);

 dlm = kzalloc(sizeof(*dlm), GFP_KERNEL);
 if (!dlm) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto leave;
 }

 dlm->name = kstrdup(domain, GFP_KERNEL);
 if (dlm->name == ((void*)0)) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto leave;
 }

 dlm->lockres_hash = (struct hlist_head **)dlm_alloc_pagevec(DLM_HASH_PAGES);
 if (!dlm->lockres_hash) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto leave;
 }

 for (i = 0; i < DLM_HASH_BUCKETS; i++)
  INIT_HLIST_HEAD(dlm_lockres_hash(dlm, i));

 dlm->master_hash = (struct hlist_head **)
    dlm_alloc_pagevec(DLM_HASH_PAGES);
 if (!dlm->master_hash) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto leave;
 }

 for (i = 0; i < DLM_HASH_BUCKETS; i++)
  INIT_HLIST_HEAD(dlm_master_hash(dlm, i));

 dlm->key = key;
 dlm->node_num = o2nm_this_node();

 dlm_create_debugfs_subroot(dlm);

 spin_lock_init(&dlm->spinlock);
 spin_lock_init(&dlm->master_lock);
 spin_lock_init(&dlm->ast_lock);
 spin_lock_init(&dlm->track_lock);
 INIT_LIST_HEAD(&dlm->list);
 INIT_LIST_HEAD(&dlm->dirty_list);
 INIT_LIST_HEAD(&dlm->reco.resources);
 INIT_LIST_HEAD(&dlm->reco.node_data);
 INIT_LIST_HEAD(&dlm->purge_list);
 INIT_LIST_HEAD(&dlm->dlm_domain_handlers);
 INIT_LIST_HEAD(&dlm->tracking_list);
 dlm->reco.state = 0;

 INIT_LIST_HEAD(&dlm->pending_asts);
 INIT_LIST_HEAD(&dlm->pending_basts);

 mlog(0, "dlm->recovery_map=%p, &(dlm->recovery_map[0])=%p\n",
    dlm->recovery_map, &(dlm->recovery_map[0]));

 memset(dlm->recovery_map, 0, sizeof(dlm->recovery_map));
 memset(dlm->live_nodes_map, 0, sizeof(dlm->live_nodes_map));
 memset(dlm->domain_map, 0, sizeof(dlm->domain_map));

 dlm->dlm_thread_task = ((void*)0);
 dlm->dlm_reco_thread_task = ((void*)0);
 dlm->dlm_worker = ((void*)0);
 init_waitqueue_head(&dlm->dlm_thread_wq);
 init_waitqueue_head(&dlm->dlm_reco_thread_wq);
 init_waitqueue_head(&dlm->reco.event);
 init_waitqueue_head(&dlm->ast_wq);
 init_waitqueue_head(&dlm->migration_wq);
 INIT_LIST_HEAD(&dlm->mle_hb_events);

 dlm->joining_node = DLM_LOCK_RES_OWNER_UNKNOWN;
 init_waitqueue_head(&dlm->dlm_join_events);

 dlm->migrate_done = 0;

 dlm->reco.new_master = O2NM_INVALID_NODE_NUM;
 dlm->reco.dead_node = O2NM_INVALID_NODE_NUM;

 atomic_set(&dlm->res_tot_count, 0);
 atomic_set(&dlm->res_cur_count, 0);
 for (i = 0; i < DLM_MLE_NUM_TYPES; ++i) {
  atomic_set(&dlm->mle_tot_count[i], 0);
  atomic_set(&dlm->mle_cur_count[i], 0);
 }

 spin_lock_init(&dlm->work_lock);
 INIT_LIST_HEAD(&dlm->work_list);
 INIT_WORK(&dlm->dispatched_work, dlm_dispatch_work);

 kref_init(&dlm->dlm_refs);
 dlm->dlm_state = DLM_CTXT_NEW;

 INIT_LIST_HEAD(&dlm->dlm_eviction_callbacks);

 mlog(0, "context init: refcount %u\n",
    kref_read(&dlm->dlm_refs));

 ret = 0;
leave:
 if (ret < 0 && dlm) {
  if (dlm->master_hash)
   dlm_free_pagevec((void **)dlm->master_hash,
     DLM_HASH_PAGES);

  if (dlm->lockres_hash)
   dlm_free_pagevec((void **)dlm->lockres_hash,
     DLM_HASH_PAGES);

  kfree(dlm->name);
  kfree(dlm);
  dlm = ((void*)0);
 }
 return dlm;
}
