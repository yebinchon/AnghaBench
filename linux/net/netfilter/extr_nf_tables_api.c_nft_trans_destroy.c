
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_trans {int list; } ;


 int kfree (struct nft_trans*) ;
 int list_del (int *) ;

__attribute__((used)) static void nft_trans_destroy(struct nft_trans *trans)
{
 list_del(&trans->list);
 kfree(trans);
}
