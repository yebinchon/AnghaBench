
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; int str; } ;
struct parse_events_term {TYPE_1__ val; int err_val; int err_term; int config; int type_term; int type_val; } ;


 int new_term (struct parse_events_term**,struct parse_events_term*,int ,int ) ;

int parse_events_term__clone(struct parse_events_term **new,
        struct parse_events_term *term)
{
 struct parse_events_term temp = {
  .type_val = term->type_val,
  .type_term = term->type_term,
  .config = term->config,
  .err_term = term->err_term,
  .err_val = term->err_val,
 };

 return new_term(new, &temp, term->val.str, term->val.num);
}
