
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gimple ;
typedef scalar_t__ const_tree ;
typedef int basic_block ;


 int CDI_DOMINATORS ;
 int DECL_NAME_POINTER (scalar_t__) ;
 scalar_t__ GIMPLE_CALL ;
 scalar_t__ GIMPLE_COND ;
 scalar_t__ NE_EXPR ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_DEF_STMT (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int get_immediate_dominator (int ,int ) ;
 scalar_t__ gimple_call_arg (int ,int ) ;
 scalar_t__ gimple_call_fndecl (int ) ;
 scalar_t__ gimple_code (int ) ;
 scalar_t__ gimple_cond_code (int ) ;
 scalar_t__ gimple_cond_lhs (int ) ;
 int gimple_cond_rhs (int ) ;
 scalar_t__ gimple_get_lhs (int ) ;
 int integer_zerop (int ) ;
 int last_stmt (int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bool dominated_by_is_err(const_tree rhs, basic_block bb)
{
 basic_block dom;
 gimple dom_stmt;
 gimple call_stmt;
 const_tree dom_lhs;
 const_tree poss_is_err_cond;
 const_tree poss_is_err_func;
 const_tree is_err_arg;

 dom = get_immediate_dominator(CDI_DOMINATORS, bb);
 if (!dom)
  return 0;

 dom_stmt = last_stmt(dom);
 if (!dom_stmt)
  return 0;

 if (gimple_code(dom_stmt) != GIMPLE_COND)
  return 0;

 if (gimple_cond_code(dom_stmt) != NE_EXPR)
  return 0;

 if (!integer_zerop(gimple_cond_rhs(dom_stmt)))
  return 0;

 poss_is_err_cond = gimple_cond_lhs(dom_stmt);

 if (TREE_CODE(poss_is_err_cond) != SSA_NAME)
  return 0;

 call_stmt = SSA_NAME_DEF_STMT(poss_is_err_cond);

 if (gimple_code(call_stmt) != GIMPLE_CALL)
  return 0;

 dom_lhs = gimple_get_lhs(call_stmt);
 poss_is_err_func = gimple_call_fndecl(call_stmt);
 if (!poss_is_err_func)
  return 0;
 if (dom_lhs != poss_is_err_cond)
  return 0;
 if (strcmp(DECL_NAME_POINTER(poss_is_err_func), "IS_ERR"))
  return 0;

 is_err_arg = gimple_call_arg(call_stmt, 0);
 if (!is_err_arg)
  return 0;

 if (is_err_arg != rhs)
  return 0;

 return 1;
}
