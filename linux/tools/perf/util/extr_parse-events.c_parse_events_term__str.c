
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse_events_term {int type_term; char* config; int err_val; int err_term; int type_val; } ;
struct TYPE_2__ {int first_column; } ;
typedef TYPE_1__ YYLTYPE ;


 int PARSE_EVENTS__TERM_TYPE_STR ;
 int new_term (struct parse_events_term**,struct parse_events_term*,char*,int ) ;

int parse_events_term__str(struct parse_events_term **term,
      int type_term, char *config, char *str,
      void *loc_term_, void *loc_val_)
{
 YYLTYPE *loc_term = loc_term_;
 YYLTYPE *loc_val = loc_val_;

 struct parse_events_term temp = {
  .type_val = PARSE_EVENTS__TERM_TYPE_STR,
  .type_term = type_term,
  .config = config,
  .err_term = loc_term ? loc_term->first_column : 0,
  .err_val = loc_val ? loc_val->first_column : 0,
 };

 return new_term(term, &temp, str, 0);
}
