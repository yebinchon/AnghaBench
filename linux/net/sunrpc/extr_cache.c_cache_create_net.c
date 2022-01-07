
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct hlist_head {int dummy; } ;
struct cache_detail {int hash_size; struct net* net; int * hash_table; } ;


 int ENOMEM ;
 struct cache_detail* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int * kcalloc (int,int,int ) ;
 int kfree (struct cache_detail*) ;
 struct cache_detail* kmemdup (struct cache_detail const*,int,int ) ;

struct cache_detail *cache_create_net(const struct cache_detail *tmpl, struct net *net)
{
 struct cache_detail *cd;
 int i;

 cd = kmemdup(tmpl, sizeof(struct cache_detail), GFP_KERNEL);
 if (cd == ((void*)0))
  return ERR_PTR(-ENOMEM);

 cd->hash_table = kcalloc(cd->hash_size, sizeof(struct hlist_head),
     GFP_KERNEL);
 if (cd->hash_table == ((void*)0)) {
  kfree(cd);
  return ERR_PTR(-ENOMEM);
 }

 for (i = 0; i < cd->hash_size; i++)
  INIT_HLIST_HEAD(&cd->hash_table[i]);
 cd->net = net;
 return cd;
}
