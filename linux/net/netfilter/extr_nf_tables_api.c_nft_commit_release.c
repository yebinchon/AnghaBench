
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int net; } ;
struct nft_trans {int msg_type; TYPE_2__ ctx; scalar_t__ put_net; } ;
struct TYPE_7__ {int priv; } ;
 int free_percpu (int ) ;
 int kfree (struct nft_trans*) ;
 int nf_tables_chain_destroy (TYPE_2__*) ;
 int nf_tables_flowtable_destroy (int ) ;
 int nf_tables_rule_destroy (TYPE_2__*,int ) ;
 int nf_tables_set_elem_destroy (TYPE_2__*,int ,int ) ;
 int nf_tables_table_destroy (TYPE_2__*) ;
 int nft_obj_destroy (TYPE_2__*,int ) ;
 int nft_set_destroy (int ) ;
 struct nft_trans* nft_trans_chain_name (struct nft_trans*) ;
 int nft_trans_chain_stats (struct nft_trans*) ;
 TYPE_1__ nft_trans_elem (struct nft_trans*) ;
 int nft_trans_elem_set (struct nft_trans*) ;
 int nft_trans_flowtable (struct nft_trans*) ;
 int nft_trans_obj (struct nft_trans*) ;
 int nft_trans_rule (struct nft_trans*) ;
 int nft_trans_set (struct nft_trans*) ;
 int put_net (int ) ;

__attribute__((used)) static void nft_commit_release(struct nft_trans *trans)
{
 switch (trans->msg_type) {
 case 129:
  nf_tables_table_destroy(&trans->ctx);
  break;
 case 128:
  free_percpu(nft_trans_chain_stats(trans));
  kfree(nft_trans_chain_name(trans));
  break;
 case 135:
  nf_tables_chain_destroy(&trans->ctx);
  break;
 case 132:
  nf_tables_rule_destroy(&trans->ctx, nft_trans_rule(trans));
  break;
 case 131:
  nft_set_destroy(nft_trans_set(trans));
  break;
 case 130:
  nf_tables_set_elem_destroy(&trans->ctx,
        nft_trans_elem_set(trans),
        nft_trans_elem(trans).priv);
  break;
 case 133:
  nft_obj_destroy(&trans->ctx, nft_trans_obj(trans));
  break;
 case 134:
  nf_tables_flowtable_destroy(nft_trans_flowtable(trans));
  break;
 }

 if (trans->put_net)
  put_net(trans->ctx.net);

 kfree(trans);
}
