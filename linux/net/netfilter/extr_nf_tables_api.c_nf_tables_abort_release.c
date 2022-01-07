
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_trans {int msg_type; int ctx; } ;
struct TYPE_2__ {int priv; } ;
 int kfree (struct nft_trans*) ;
 int nf_tables_chain_destroy (int *) ;
 int nf_tables_flowtable_destroy (int ) ;
 int nf_tables_rule_destroy (int *,int ) ;
 int nf_tables_table_destroy (int *) ;
 int nft_obj_destroy (int *,int ) ;
 int nft_set_destroy (int ) ;
 int nft_set_elem_destroy (int ,int ,int) ;
 TYPE_1__ nft_trans_elem (struct nft_trans*) ;
 int nft_trans_elem_set (struct nft_trans*) ;
 int nft_trans_flowtable (struct nft_trans*) ;
 int nft_trans_obj (struct nft_trans*) ;
 int nft_trans_rule (struct nft_trans*) ;
 int nft_trans_set (struct nft_trans*) ;

__attribute__((used)) static void nf_tables_abort_release(struct nft_trans *trans)
{
 switch (trans->msg_type) {
 case 128:
  nf_tables_table_destroy(&trans->ctx);
  break;
 case 134:
  nf_tables_chain_destroy(&trans->ctx);
  break;
 case 131:
  nf_tables_rule_destroy(&trans->ctx, nft_trans_rule(trans));
  break;
 case 130:
  nft_set_destroy(nft_trans_set(trans));
  break;
 case 129:
  nft_set_elem_destroy(nft_trans_elem_set(trans),
         nft_trans_elem(trans).priv, 1);
  break;
 case 132:
  nft_obj_destroy(&trans->ctx, nft_trans_obj(trans));
  break;
 case 133:
  nf_tables_flowtable_destroy(nft_trans_flowtable(trans));
  break;
 }
 kfree(trans);
}
