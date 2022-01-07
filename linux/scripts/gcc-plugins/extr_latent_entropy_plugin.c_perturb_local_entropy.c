
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int gimple_stmt_iterator ;
typedef int gimple ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int basic_block ;


 int GSI_NEW_STMT ;
 int create_assign (int,int ,int ,int ) ;
 int get_op (int *) ;
 int gsi_after_labels (int ) ;
 int gsi_insert_before (int *,int ,int ) ;
 int update_stmt (int ) ;

__attribute__((used)) static void perturb_local_entropy(basic_block bb, tree local_entropy)
{
 gimple_stmt_iterator gsi;
 gimple assign;
 tree rhs;
 enum tree_code op;

 op = get_op(&rhs);
 assign = create_assign(op, local_entropy, local_entropy, rhs);
 gsi = gsi_after_labels(bb);
 gsi_insert_before(&gsi, assign, GSI_NEW_STMT);
 update_stmt(assign);
}
