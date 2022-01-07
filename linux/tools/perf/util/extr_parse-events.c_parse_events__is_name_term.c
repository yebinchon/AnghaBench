
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events_term {scalar_t__ type_term; } ;


 scalar_t__ PARSE_EVENTS__TERM_TYPE_NAME ;

__attribute__((used)) static int parse_events__is_name_term(struct parse_events_term *term)
{
 return term->type_term == PARSE_EVENTS__TERM_TYPE_NAME;
}
