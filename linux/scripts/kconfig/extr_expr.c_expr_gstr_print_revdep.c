
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tristate ;
struct gstr {int dummy; } ;
struct expr {int dummy; } ;


 int expr_print_gstr_helper ;
 int expr_print_revdep (struct expr*,int ,struct gstr*,int ,char const**) ;

void expr_gstr_print_revdep(struct expr *e, struct gstr *gs,
       tristate pr_type, const char *title)
{
 expr_print_revdep(e, expr_print_gstr_helper, gs, pr_type, &title);
}
