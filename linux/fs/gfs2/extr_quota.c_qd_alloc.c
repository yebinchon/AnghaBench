
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kqid {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct TYPE_2__ {int count; int lock; } ;
struct gfs2_quota_data {int qd_slot; unsigned int qd_hash; int qd_gl; int qd_lru; struct kqid qd_id; TYPE_1__ qd_lockref; struct gfs2_sbd* qd_sbd; } ;


 int CREATE ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int gfs2_glock_get (struct gfs2_sbd*,int ,int *,int ,int *) ;
 int gfs2_quota_glops ;
 int gfs2_quotad_cachep ;
 int kmem_cache_free (int ,struct gfs2_quota_data*) ;
 struct gfs2_quota_data* kmem_cache_zalloc (int ,int ) ;
 int qd2index (struct gfs2_quota_data*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct gfs2_quota_data *qd_alloc(unsigned hash, struct gfs2_sbd *sdp, struct kqid qid)
{
 struct gfs2_quota_data *qd;
 int error;

 qd = kmem_cache_zalloc(gfs2_quotad_cachep, GFP_NOFS);
 if (!qd)
  return ((void*)0);

 qd->qd_sbd = sdp;
 qd->qd_lockref.count = 1;
 spin_lock_init(&qd->qd_lockref.lock);
 qd->qd_id = qid;
 qd->qd_slot = -1;
 INIT_LIST_HEAD(&qd->qd_lru);
 qd->qd_hash = hash;

 error = gfs2_glock_get(sdp, qd2index(qd),
         &gfs2_quota_glops, CREATE, &qd->qd_gl);
 if (error)
  goto fail;

 return qd;

fail:
 kmem_cache_free(gfs2_quotad_cachep, qd);
 return ((void*)0);
}
