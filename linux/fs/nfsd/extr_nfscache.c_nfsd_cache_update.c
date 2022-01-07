
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {struct kvec* head; } ;
struct svc_rqst {int rq_flags; TYPE_1__ rq_res; struct svc_cacherep* rq_cacherep; } ;
struct kvec {int iov_len; scalar_t__ iov_base; } ;
struct TYPE_4__ {int k_xid; } ;
struct svc_cacherep {int c_type; int c_state; int c_secure; struct kvec c_replvec; int c_replstat; TYPE_2__ c_key; } ;
struct nfsd_net {size_t drc_mem_usage; struct nfsd_drc_bucket* drc_hashtbl; } ;
struct nfsd_drc_bucket {int cache_lock; } ;
typedef int __be32 ;


 int GFP_KERNEL ;
 int RC_DONE ;



 int RQ_SECURE ;
 int SVC_NET (struct svc_rqst*) ;
 scalar_t__ kmalloc (size_t,int ) ;
 int lru_put_end (struct nfsd_drc_bucket*,struct svc_cacherep*) ;
 int memcpy (scalar_t__,int *,size_t) ;
 struct nfsd_net* net_generic (int ,int ) ;
 size_t nfsd_cache_hash (int ,struct nfsd_net*) ;
 int nfsd_net_id ;
 int nfsd_reply_cache_free (struct nfsd_drc_bucket*,struct svc_cacherep*,struct nfsd_net*) ;
 int printk (char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;

void
nfsd_cache_update(struct svc_rqst *rqstp, int cachetype, __be32 *statp)
{
 struct nfsd_net *nn = net_generic(SVC_NET(rqstp), nfsd_net_id);
 struct svc_cacherep *rp = rqstp->rq_cacherep;
 struct kvec *resv = &rqstp->rq_res.head[0], *cachv;
 u32 hash;
 struct nfsd_drc_bucket *b;
 int len;
 size_t bufsize = 0;

 if (!rp)
  return;

 hash = nfsd_cache_hash(rp->c_key.k_xid, nn);
 b = &nn->drc_hashtbl[hash];

 len = resv->iov_len - ((char*)statp - (char*)resv->iov_base);
 len >>= 2;


 if (!statp || len > (256 >> 2)) {
  nfsd_reply_cache_free(b, rp, nn);
  return;
 }

 switch (cachetype) {
 case 128:
  if (len != 1)
   printk("nfsd: RC_REPLSTAT/reply len %d!\n",len);
  rp->c_replstat = *statp;
  break;
 case 129:
  cachv = &rp->c_replvec;
  bufsize = len << 2;
  cachv->iov_base = kmalloc(bufsize, GFP_KERNEL);
  if (!cachv->iov_base) {
   nfsd_reply_cache_free(b, rp, nn);
   return;
  }
  cachv->iov_len = bufsize;
  memcpy(cachv->iov_base, statp, bufsize);
  break;
 case 130:
  nfsd_reply_cache_free(b, rp, nn);
  return;
 }
 spin_lock(&b->cache_lock);
 nn->drc_mem_usage += bufsize;
 lru_put_end(b, rp);
 rp->c_secure = test_bit(RQ_SECURE, &rqstp->rq_flags);
 rp->c_type = cachetype;
 rp->c_state = RC_DONE;
 spin_unlock(&b->cache_lock);
 return;
}
