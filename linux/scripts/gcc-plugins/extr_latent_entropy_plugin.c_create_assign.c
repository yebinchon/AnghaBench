
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int gimple ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int gimple_build_assign_with_ops (int,int ,int ,int ) ;

__attribute__((used)) static gimple create_assign(enum tree_code code, tree lhs, tree op1,
    tree op2)
{
 return gimple_build_assign_with_ops(code, lhs, op1, op2);
}
