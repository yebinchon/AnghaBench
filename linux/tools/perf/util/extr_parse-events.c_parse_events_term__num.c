
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct parse_events_term {int type_term; char* config; int no_value; int err_val; int err_term; int type_val; } ;
struct TYPE_2__ {int first_column; } ;
typedef TYPE_1__ YYLTYPE ;


 int PARSE_EVENTS__TERM_TYPE_NUM ;
 int new_term (struct parse_events_term**,struct parse_events_term*,int *,int ) ;

int parse_events_term__num(struct parse_events_term **term,
      int type_term, char *config, u64 num,
      bool no_value,
      void *loc_term_, void *loc_val_)
{
 YYLTYPE *loc_term = loc_term_;
 YYLTYPE *loc_val = loc_val_;

 struct parse_events_term temp = {
  .type_val = PARSE_EVENTS__TERM_TYPE_NUM,
  .type_term = type_term,
  .config = config,
  .no_value = no_value,
  .err_term = loc_term ? loc_term->first_column : 0,
  .err_val = loc_val ? loc_val->first_column : 0,
 };

 return new_term(term, &temp, ((void*)0), num);
}
