
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct nft_object* name; } ;
struct nft_object {TYPE_3__ key; TYPE_2__* ops; } ;
struct nft_ctx {int dummy; } ;
struct TYPE_5__ {TYPE_1__* type; int (* destroy ) (struct nft_ctx const*,struct nft_object*) ;} ;
struct TYPE_4__ {int owner; } ;


 int kfree (struct nft_object*) ;
 int module_put (int ) ;
 int stub1 (struct nft_ctx const*,struct nft_object*) ;

__attribute__((used)) static void nft_obj_destroy(const struct nft_ctx *ctx, struct nft_object *obj)
{
 if (obj->ops->destroy)
  obj->ops->destroy(ctx, obj);

 module_put(obj->ops->type->owner);
 kfree(obj->key.name);
 kfree(obj);
}
