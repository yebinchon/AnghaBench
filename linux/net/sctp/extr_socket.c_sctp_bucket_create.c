
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_bind_hashbucket {int chain; } ;
struct sctp_bind_bucket {unsigned short port; int node; struct net* net; int owner; scalar_t__ fastreuse; } ;
struct net {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_HLIST_HEAD (int *) ;
 int SCTP_DBG_OBJCNT_INC (int ) ;
 int bind_bucket ;
 int hlist_add_head (int *,int *) ;
 struct sctp_bind_bucket* kmem_cache_alloc (int ,int ) ;
 int sctp_bucket_cachep ;

__attribute__((used)) static struct sctp_bind_bucket *sctp_bucket_create(
 struct sctp_bind_hashbucket *head, struct net *net, unsigned short snum)
{
 struct sctp_bind_bucket *pp;

 pp = kmem_cache_alloc(sctp_bucket_cachep, GFP_ATOMIC);
 if (pp) {
  SCTP_DBG_OBJCNT_INC(bind_bucket);
  pp->port = snum;
  pp->fastreuse = 0;
  INIT_HLIST_HEAD(&pp->owner);
  pp->net = net;
  hlist_add_head(&pp->node, &head->chain);
 }
 return pp;
}
