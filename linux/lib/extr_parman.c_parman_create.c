
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parman_ops {size_t algo; int base_count; } ;
struct parman {int algo; int limit_count; void* priv; struct parman_ops const* ops; int prio_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct parman* kzalloc (int,int ) ;
 int * parman_algos ;

struct parman *parman_create(const struct parman_ops *ops, void *priv)
{
 struct parman *parman;

 parman = kzalloc(sizeof(*parman), GFP_KERNEL);
 if (!parman)
  return ((void*)0);
 INIT_LIST_HEAD(&parman->prio_list);
 parman->ops = ops;
 parman->priv = priv;
 parman->limit_count = ops->base_count;
 parman->algo = parman_algos[ops->algo];
 return parman;
}
