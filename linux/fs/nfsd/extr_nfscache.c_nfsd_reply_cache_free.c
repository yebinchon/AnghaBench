
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_cacherep {int dummy; } ;
struct nfsd_net {int dummy; } ;
struct nfsd_drc_bucket {int cache_lock; } ;


 int nfsd_reply_cache_free_locked (struct nfsd_drc_bucket*,struct svc_cacherep*,struct nfsd_net*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
nfsd_reply_cache_free(struct nfsd_drc_bucket *b, struct svc_cacherep *rp,
   struct nfsd_net *nn)
{
 spin_lock(&b->cache_lock);
 nfsd_reply_cache_free_locked(b, rp, nn);
 spin_unlock(&b->cache_lock);
}
