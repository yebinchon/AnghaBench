
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int len; int hash; scalar_t__ name; } ;
struct dlm_lock_resource {int refmap; int lvb; int tracking; scalar_t__ last_used; int state; int spinlock; int refs; struct dlm_ctxt* dlm; scalar_t__ inflight_assert_workers; scalar_t__ inflight_locks; scalar_t__ migration_pending; int asts_reserved; int purge; int recovering; int dirty; int blocked; int converting; int granted; int hash_node; int wq; TYPE_1__ lockname; } ;
struct dlm_ctxt {int track_lock; int tracking_list; int res_cur_count; int res_tot_count; } ;


 int DLM_LOCK_RES_IN_PROGRESS ;
 int DLM_LOCK_RES_OWNER_UNKNOWN ;
 int DLM_LVB_LEN ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 int dlm_lockid_hash (char const*,unsigned int) ;
 int dlm_set_lockres_owner (struct dlm_ctxt*,struct dlm_lock_resource*,int ) ;
 int init_waitqueue_head (int *) ;
 int kref_init (int *) ;
 int list_add_tail (int *,int *) ;
 int memcpy (char*,char const*,unsigned int) ;
 int memset (int ,int ,int) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void dlm_init_lockres(struct dlm_ctxt *dlm,
        struct dlm_lock_resource *res,
        const char *name, unsigned int namelen)
{
 char *qname;





 qname = (char *) res->lockname.name;
 memcpy(qname, name, namelen);

 res->lockname.len = namelen;
 res->lockname.hash = dlm_lockid_hash(name, namelen);

 init_waitqueue_head(&res->wq);
 spin_lock_init(&res->spinlock);
 INIT_HLIST_NODE(&res->hash_node);
 INIT_LIST_HEAD(&res->granted);
 INIT_LIST_HEAD(&res->converting);
 INIT_LIST_HEAD(&res->blocked);
 INIT_LIST_HEAD(&res->dirty);
 INIT_LIST_HEAD(&res->recovering);
 INIT_LIST_HEAD(&res->purge);
 INIT_LIST_HEAD(&res->tracking);
 atomic_set(&res->asts_reserved, 0);
 res->migration_pending = 0;
 res->inflight_locks = 0;
 res->inflight_assert_workers = 0;

 res->dlm = dlm;

 kref_init(&res->refs);

 atomic_inc(&dlm->res_tot_count);
 atomic_inc(&dlm->res_cur_count);


 spin_lock(&res->spinlock);
 dlm_set_lockres_owner(dlm, res, DLM_LOCK_RES_OWNER_UNKNOWN);
 spin_unlock(&res->spinlock);

 res->state = DLM_LOCK_RES_IN_PROGRESS;

 res->last_used = 0;

 spin_lock(&dlm->track_lock);
 list_add_tail(&res->tracking, &dlm->tracking_list);
 spin_unlock(&dlm->track_lock);

 memset(res->lvb, 0, DLM_LVB_LEN);
 memset(res->refmap, 0, sizeof(res->refmap));
}
