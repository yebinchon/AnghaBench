
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net {int dummy; } ;
struct mr_table_ops {int rht_params; } ;
struct mr_table {int mroute_reg_vif_num; int ipmr_expire_timer; int mfc_unres_queue; int mfc_cache_list; struct mr_table_ops ops; int mfc_hash; int net; int id; } ;


 int ENOMEM ;
 struct mr_table* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct mr_table*) ;
 struct mr_table* kzalloc (int,int ) ;
 int rhltable_init (int *,int ) ;
 int timer_setup (int *,void (*) (struct timer_list*),int ) ;
 int write_pnet (int *,struct net*) ;

struct mr_table *
mr_table_alloc(struct net *net, u32 id,
        struct mr_table_ops *ops,
        void (*expire_func)(struct timer_list *t),
        void (*table_set)(struct mr_table *mrt,
     struct net *net))
{
 struct mr_table *mrt;
 int err;

 mrt = kzalloc(sizeof(*mrt), GFP_KERNEL);
 if (!mrt)
  return ERR_PTR(-ENOMEM);
 mrt->id = id;
 write_pnet(&mrt->net, net);

 mrt->ops = *ops;
 err = rhltable_init(&mrt->mfc_hash, mrt->ops.rht_params);
 if (err) {
  kfree(mrt);
  return ERR_PTR(err);
 }
 INIT_LIST_HEAD(&mrt->mfc_cache_list);
 INIT_LIST_HEAD(&mrt->mfc_unres_queue);

 timer_setup(&mrt->ipmr_expire_timer, expire_func, 0);

 mrt->mroute_reg_vif_num = -1;
 table_set(mrt, net);
 return mrt;
}
