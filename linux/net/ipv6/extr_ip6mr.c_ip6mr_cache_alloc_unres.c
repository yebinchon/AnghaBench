
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; int unresolved; } ;
struct TYPE_5__ {TYPE_1__ unres; } ;
struct TYPE_6__ {TYPE_2__ mfc_un; } ;
struct mfc6_cache {TYPE_3__ _c; } ;


 int GFP_ATOMIC ;
 int HZ ;
 scalar_t__ jiffies ;
 struct mfc6_cache* kmem_cache_zalloc (int ,int ) ;
 int mrt_cachep ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static struct mfc6_cache *ip6mr_cache_alloc_unres(void)
{
 struct mfc6_cache *c = kmem_cache_zalloc(mrt_cachep, GFP_ATOMIC);
 if (!c)
  return ((void*)0);
 skb_queue_head_init(&c->_c.mfc_un.unres.unresolved);
 c->_c.mfc_un.unres.expires = jiffies + 10 * HZ;
 return c;
}
