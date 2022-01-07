
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int add_referenced_var (int ) ;
 int create_tmp_var (int ,char const*) ;
 int mark_sym_for_renaming (int ) ;

__attribute__((used)) static tree create_var(tree type, const char *name)
{
 tree var;

 var = create_tmp_var(type, name);
 add_referenced_var(var);
 mark_sym_for_renaming(var);
 return var;
}
