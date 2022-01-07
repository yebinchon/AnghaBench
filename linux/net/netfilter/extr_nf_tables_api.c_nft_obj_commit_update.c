
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_trans {int dummy; } ;
struct nft_object {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* update ) (struct nft_object*,struct nft_object*) ;} ;


 int kfree (struct nft_object*) ;
 struct nft_object* nft_trans_obj (struct nft_trans*) ;
 struct nft_object* nft_trans_obj_newobj (struct nft_trans*) ;
 int stub1 (struct nft_object*,struct nft_object*) ;

__attribute__((used)) static void nft_obj_commit_update(struct nft_trans *trans)
{
 struct nft_object *newobj;
 struct nft_object *obj;

 obj = nft_trans_obj(trans);
 newobj = nft_trans_obj_newobj(trans);

 if (obj->ops->update)
  obj->ops->update(obj, newobj);

 kfree(newobj);
}
