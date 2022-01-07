
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nft_set {scalar_t__ use; int name; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* destroy ) (struct nft_set*) ;} ;
struct TYPE_3__ {int owner; } ;


 scalar_t__ WARN_ON (int) ;
 int kfree (int ) ;
 int kvfree (struct nft_set*) ;
 int module_put (int ) ;
 int stub1 (struct nft_set*) ;
 TYPE_1__* to_set_type (TYPE_2__*) ;

__attribute__((used)) static void nft_set_destroy(struct nft_set *set)
{
 if (WARN_ON(set->use > 0))
  return;

 set->ops->destroy(set);
 module_put(to_set_type(set->ops)->owner);
 kfree(set->name);
 kvfree(set);
}
