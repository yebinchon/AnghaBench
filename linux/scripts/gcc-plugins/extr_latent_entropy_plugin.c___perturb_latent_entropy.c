
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int gimple_stmt_iterator ;
typedef int gimple ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int GSI_NEW_STMT ;
 int add_referenced_var (int ) ;
 int create_assign (int,int ,int ,int ) ;
 int create_var (int ,char*) ;
 int get_op (int *) ;
 int gimple_build_assign (int ,int ) ;
 int gsi_insert_after (int *,int ,int ) ;
 int gsi_insert_before (int *,int ,int ) ;
 int latent_entropy_decl ;
 int long_unsigned_type_node ;
 int mark_sym_for_renaming (int ) ;
 int update_stmt (int ) ;

__attribute__((used)) static void __perturb_latent_entropy(gimple_stmt_iterator *gsi,
     tree local_entropy)
{
 gimple assign;
 tree temp;
 enum tree_code op;


 temp = create_var(long_unsigned_type_node, "temp_latent_entropy");


 add_referenced_var(latent_entropy_decl);
 mark_sym_for_renaming(latent_entropy_decl);
 assign = gimple_build_assign(temp, latent_entropy_decl);
 gsi_insert_before(gsi, assign, GSI_NEW_STMT);
 update_stmt(assign);


 op = get_op(((void*)0));
 assign = create_assign(op, temp, temp, local_entropy);
 gsi_insert_after(gsi, assign, GSI_NEW_STMT);
 update_stmt(assign);


 assign = gimple_build_assign(latent_entropy_decl, temp);
 gsi_insert_after(gsi, assign, GSI_NEW_STMT);
 update_stmt(assign);
}
