
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refcount; int minvif; scalar_t__ last_assert; } ;
struct TYPE_5__ {TYPE_1__ res; } ;
struct TYPE_6__ {TYPE_2__ mfc_un; int free; } ;
struct mfc6_cache {TYPE_3__ _c; } ;


 int GFP_KERNEL ;
 int MAXMIFS ;
 scalar_t__ MFC_ASSERT_THRESH ;
 int ip6mr_cache_free_rcu ;
 scalar_t__ jiffies ;
 struct mfc6_cache* kmem_cache_zalloc (int ,int ) ;
 int mrt_cachep ;
 int refcount_set (int *,int) ;

__attribute__((used)) static struct mfc6_cache *ip6mr_cache_alloc(void)
{
 struct mfc6_cache *c = kmem_cache_zalloc(mrt_cachep, GFP_KERNEL);
 if (!c)
  return ((void*)0);
 c->_c.mfc_un.res.last_assert = jiffies - MFC_ASSERT_THRESH - 1;
 c->_c.mfc_un.res.minvif = MAXMIFS;
 c->_c.free = ip6mr_cache_free_rcu;
 refcount_set(&c->_c.mfc_un.res.refcount, 1);
 return c;
}
