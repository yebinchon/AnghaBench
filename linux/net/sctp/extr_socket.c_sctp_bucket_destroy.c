
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_bind_bucket {int node; int owner; } ;


 int SCTP_DBG_OBJCNT_DEC (int ) ;
 int __hlist_del (int *) ;
 int bind_bucket ;
 scalar_t__ hlist_empty (int *) ;
 int kmem_cache_free (int ,struct sctp_bind_bucket*) ;
 int sctp_bucket_cachep ;

__attribute__((used)) static void sctp_bucket_destroy(struct sctp_bind_bucket *pp)
{
 if (pp && hlist_empty(&pp->owner)) {
  __hlist_del(&pp->node);
  kmem_cache_free(sctp_bucket_cachep, pp);
  SCTP_DBG_OBJCNT_DEC(bind_bucket);
 }
}
