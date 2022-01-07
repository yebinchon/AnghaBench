
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_rateest_net {int * hash; } ;
struct xt_rateest {int list; int name; } ;


 int hlist_add_head (int *,int *) ;
 unsigned int xt_rateest_hash (int ) ;

__attribute__((used)) static void xt_rateest_hash_insert(struct xt_rateest_net *xn,
       struct xt_rateest *est)
{
 unsigned int h;

 h = xt_rateest_hash(est->name);
 hlist_add_head(&est->list, &xn->hash[h]);
}
