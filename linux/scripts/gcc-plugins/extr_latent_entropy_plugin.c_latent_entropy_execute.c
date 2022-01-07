
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* basic_block ;
struct TYPE_7__ {struct TYPE_7__* next_bb; } ;


 int ENTRY_BLOCK_PTR_FOR_FN (int ) ;
 TYPE_1__* EXIT_BLOCK_PTR_FOR_FN (int ) ;
 int cfun ;
 int create_latent_entropy_decl () ;
 int create_var (int ,char*) ;
 int gcc_assert (int ) ;
 int init_local_entropy (TYPE_1__*,int ) ;
 int long_unsigned_type_node ;
 int perturb_latent_entropy (int ) ;
 int perturb_local_entropy (TYPE_1__*,int ) ;
 int single_pred_p (TYPE_1__*) ;
 TYPE_1__* single_succ (int ) ;
 int single_succ_edge (int ) ;
 int single_succ_p (int ) ;
 int split_edge (int ) ;

__attribute__((used)) static unsigned int latent_entropy_execute(void)
{
 basic_block bb;
 tree local_entropy;

 if (!create_latent_entropy_decl())
  return 0;


 gcc_assert(single_succ_p(ENTRY_BLOCK_PTR_FOR_FN(cfun)));
 bb = single_succ(ENTRY_BLOCK_PTR_FOR_FN(cfun));
 if (!single_pred_p(bb)) {
  split_edge(single_succ_edge(ENTRY_BLOCK_PTR_FOR_FN(cfun)));
  gcc_assert(single_succ_p(ENTRY_BLOCK_PTR_FOR_FN(cfun)));
  bb = single_succ(ENTRY_BLOCK_PTR_FOR_FN(cfun));
 }


 local_entropy = create_var(long_unsigned_type_node, "local_entropy");


 init_local_entropy(bb, local_entropy);

 bb = bb->next_bb;





 while (bb != EXIT_BLOCK_PTR_FOR_FN(cfun)) {
  perturb_local_entropy(bb, local_entropy);
  bb = bb->next_bb;
 };


 perturb_latent_entropy(local_entropy);
 return 0;
}
