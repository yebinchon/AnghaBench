
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct cache_detail {struct cache_detail* hash_table; } ;


 int kfree (struct cache_detail*) ;

void cache_destroy_net(struct cache_detail *cd, struct net *net)
{
 kfree(cd->hash_table);
 kfree(cd);
}
