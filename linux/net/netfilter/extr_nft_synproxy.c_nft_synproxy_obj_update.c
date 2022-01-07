
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_synproxy {int info; } ;
struct nft_object {int dummy; } ;


 struct nft_synproxy* nft_obj_data (struct nft_object*) ;

__attribute__((used)) static void nft_synproxy_obj_update(struct nft_object *obj,
        struct nft_object *newobj)
{
 struct nft_synproxy *newpriv = nft_obj_data(newobj);
 struct nft_synproxy *priv = nft_obj_data(obj);

 priv->info = newpriv->info;
}
