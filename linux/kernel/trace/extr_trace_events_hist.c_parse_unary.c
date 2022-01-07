
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int tr; } ;
struct hist_trigger_data {int dummy; } ;
struct hist_field {int flags; int type; int name; int operator; struct hist_field** operands; int fn; } ;


 int EINVAL ;
 int ENOMEM ;
 struct hist_field* ERR_PTR (int) ;
 int FIELD_OP_UNARY_MINUS ;
 int GFP_KERNEL ;
 int HIST_ERR_TOO_MANY_SUBEXPR ;
 unsigned long HIST_FIELD_FL_EXPR ;
 int HIST_FIELD_FL_TIMESTAMP ;
 int HIST_FIELD_FL_TIMESTAMP_USECS ;
 scalar_t__ IS_ERR (struct hist_field*) ;
 int PTR_ERR (struct hist_field*) ;
 struct hist_field* create_hist_field (struct hist_trigger_data*,int *,unsigned long,char*) ;
 int destroy_hist_field (struct hist_field*,int ) ;
 int errpos (char*) ;
 int expr_str (struct hist_field*,int ) ;
 int hist_err (int ,int ,int ) ;
 int hist_field_unary_minus ;
 int kstrdup (int ,int ) ;
 struct hist_field* parse_expr (struct hist_trigger_data*,struct trace_event_file*,char*,unsigned long,int *,unsigned int) ;
 char* strchr (char*,char) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static struct hist_field *parse_unary(struct hist_trigger_data *hist_data,
          struct trace_event_file *file,
          char *str, unsigned long flags,
          char *var_name, unsigned int level)
{
 struct hist_field *operand1, *expr = ((void*)0);
 unsigned long operand_flags;
 int ret = 0;
 char *s;



 if (level > 3) {
  hist_err(file->tr, HIST_ERR_TOO_MANY_SUBEXPR, errpos(str));
  ret = -EINVAL;
  goto free;
 }

 str++;

 s = strchr(str, '(');
 if (s)
  str++;
 else {
  ret = -EINVAL;
  goto free;
 }

 s = strrchr(str, ')');
 if (s)
  *s = '\0';
 else {
  ret = -EINVAL;
  goto free;
 }

 flags |= HIST_FIELD_FL_EXPR;
 expr = create_hist_field(hist_data, ((void*)0), flags, var_name);
 if (!expr) {
  ret = -ENOMEM;
  goto free;
 }

 operand_flags = 0;
 operand1 = parse_expr(hist_data, file, str, operand_flags, ((void*)0), ++level);
 if (IS_ERR(operand1)) {
  ret = PTR_ERR(operand1);
  goto free;
 }

 expr->flags |= operand1->flags &
  (HIST_FIELD_FL_TIMESTAMP | HIST_FIELD_FL_TIMESTAMP_USECS);
 expr->fn = hist_field_unary_minus;
 expr->operands[0] = operand1;
 expr->operator = FIELD_OP_UNARY_MINUS;
 expr->name = expr_str(expr, 0);
 expr->type = kstrdup(operand1->type, GFP_KERNEL);
 if (!expr->type) {
  ret = -ENOMEM;
  goto free;
 }

 return expr;
 free:
 destroy_hist_field(expr, 0);
 return ERR_PTR(ret);
}
