
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqid {int dummy; } ;
struct gfs2_sbd {int sd_quota_count; int sd_quota_list; } ;
struct gfs2_quota_data {int qd_gl; int qd_hlist; int qd_list; } ;


 int ENOMEM ;
 int atomic_inc (int *) ;
 int gfs2_glock_put (int ) ;
 unsigned int gfs2_qd_hash (struct gfs2_sbd*,struct kqid) ;
 struct gfs2_quota_data* gfs2_qd_search_bucket (unsigned int,struct gfs2_sbd*,struct kqid) ;
 int gfs2_quotad_cachep ;
 int hlist_bl_add_head_rcu (int *,int *) ;
 int kmem_cache_free (int ,struct gfs2_quota_data*) ;
 int list_add (int *,int *) ;
 struct gfs2_quota_data* qd_alloc (unsigned int,struct gfs2_sbd*,struct kqid) ;
 int * qd_hash_table ;
 int qd_lock ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_lock_bucket (unsigned int) ;
 int spin_unlock (int *) ;
 int spin_unlock_bucket (unsigned int) ;

__attribute__((used)) static int qd_get(struct gfs2_sbd *sdp, struct kqid qid,
    struct gfs2_quota_data **qdp)
{
 struct gfs2_quota_data *qd, *new_qd;
 unsigned int hash = gfs2_qd_hash(sdp, qid);

 rcu_read_lock();
 *qdp = qd = gfs2_qd_search_bucket(hash, sdp, qid);
 rcu_read_unlock();

 if (qd)
  return 0;

 new_qd = qd_alloc(hash, sdp, qid);
 if (!new_qd)
  return -ENOMEM;

 spin_lock(&qd_lock);
 spin_lock_bucket(hash);
 *qdp = qd = gfs2_qd_search_bucket(hash, sdp, qid);
 if (qd == ((void*)0)) {
  *qdp = new_qd;
  list_add(&new_qd->qd_list, &sdp->sd_quota_list);
  hlist_bl_add_head_rcu(&new_qd->qd_hlist, &qd_hash_table[hash]);
  atomic_inc(&sdp->sd_quota_count);
 }
 spin_unlock_bucket(hash);
 spin_unlock(&qd_lock);

 if (qd) {
  gfs2_glock_put(new_qd->qd_gl);
  kmem_cache_free(gfs2_quotad_cachep, new_qd);
 }

 return 0;
}
