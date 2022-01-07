
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int gimple_stmt_iterator ;
typedef int gimple ;
typedef int basic_block ;


 scalar_t__ AGGREGATE_TYPE_P (scalar_t__) ;
 scalar_t__ CONSTRUCTOR ;
 int DECL_SOURCE_LOCATION (scalar_t__) ;
 int ENTRY_BLOCK_PTR_FOR_FN (int ) ;
 int GSI_NEW_STMT ;
 scalar_t__ TREE_ADDRESSABLE (scalar_t__) ;
 scalar_t__ TREE_CLOBBER_P (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ build_constructor (scalar_t__,int *) ;
 scalar_t__ byref ;
 int cfun ;
 scalar_t__ fold_convert (scalar_t__,int ) ;
 scalar_t__ gimple_assign_rhs1 (int ) ;
 int gimple_assign_single_p (int ) ;
 int gimple_build_assign (scalar_t__,scalar_t__) ;
 scalar_t__ gimple_get_lhs (int ) ;
 int gsi_after_labels (int ) ;
 int gsi_end_p (int ) ;
 int gsi_insert_before (int *,int ,int ) ;
 int gsi_next (int *) ;
 int gsi_start_bb (int ) ;
 int gsi_stmt (int ) ;
 int inform (int ,char*,char*) ;
 int integer_zero_node ;
 int single_succ (int ) ;
 int update_stmt (int ) ;
 scalar_t__ verbose ;

__attribute__((used)) static void initialize(tree var)
{
 basic_block bb;
 gimple_stmt_iterator gsi;
 tree initializer;
 gimple init_stmt;
 tree type;


 bb = single_succ(ENTRY_BLOCK_PTR_FOR_FN(cfun));


 for (gsi = gsi_start_bb(bb); !gsi_end_p(gsi); gsi_next(&gsi)) {
  gimple stmt = gsi_stmt(gsi);
  tree rhs1;


  if (!gimple_assign_single_p(stmt))
   continue;
  rhs1 = gimple_assign_rhs1(stmt);






  if (gimple_get_lhs(stmt) != var)
   continue;

  if (TREE_CODE(rhs1) == CONSTRUCTOR)
   return;
 }


 if (verbose)
  inform(DECL_SOURCE_LOCATION(var),
   "%s variable will be forcibly initialized",
   (byref && TREE_ADDRESSABLE(var)) ? "byref"
        : "userspace");


 type = TREE_TYPE(var);
 if (AGGREGATE_TYPE_P(type))
  initializer = build_constructor(type, ((void*)0));
 else
  initializer = fold_convert(type, integer_zero_node);


 init_stmt = gimple_build_assign(var, initializer);
 gsi = gsi_after_labels(single_succ(ENTRY_BLOCK_PTR_FOR_FN(cfun)));
 gsi_insert_before(&gsi, init_stmt, GSI_NEW_STMT);
 update_stmt(init_stmt);
}
