
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* type; } ;
struct nft_flowtable {TYPE_2__ data; struct nft_flowtable* name; struct nft_flowtable* ops; } ;
struct TYPE_3__ {int owner; int (* free ) (TYPE_2__*) ;} ;


 int kfree (struct nft_flowtable*) ;
 int module_put (int ) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void nf_tables_flowtable_destroy(struct nft_flowtable *flowtable)
{
 kfree(flowtable->ops);
 kfree(flowtable->name);
 flowtable->data.type->free(&flowtable->data);
 module_put(flowtable->data.type->owner);
 kfree(flowtable);
}
