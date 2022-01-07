
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iov_base; scalar_t__ iov_len; } ;
struct svc_cacherep {scalar_t__ c_type; scalar_t__ c_state; int c_lru; int c_node; TYPE_1__ c_replvec; } ;
struct nfsd_net {int drc_mem_usage; int drc_slab; int num_drc_entries; } ;
struct nfsd_drc_bucket {int rb_head; } ;


 scalar_t__ RC_REPLBUFF ;
 scalar_t__ RC_UNUSED ;
 int atomic_dec (int *) ;
 int kfree (scalar_t__) ;
 int kmem_cache_free (int ,struct svc_cacherep*) ;
 int list_del (int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void
nfsd_reply_cache_free_locked(struct nfsd_drc_bucket *b, struct svc_cacherep *rp,
    struct nfsd_net *nn)
{
 if (rp->c_type == RC_REPLBUFF && rp->c_replvec.iov_base) {
  nn->drc_mem_usage -= rp->c_replvec.iov_len;
  kfree(rp->c_replvec.iov_base);
 }
 if (rp->c_state != RC_UNUSED) {
  rb_erase(&rp->c_node, &b->rb_head);
  list_del(&rp->c_lru);
  atomic_dec(&nn->num_drc_entries);
  nn->drc_mem_usage -= sizeof(*rp);
 }
 kmem_cache_free(nn->drc_slab, rp);
}
