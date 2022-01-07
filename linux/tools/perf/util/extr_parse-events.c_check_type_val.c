
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events_term {int type_val; int err_val; } ;
struct parse_events_error {void* str; int idx; } ;


 int EINVAL ;
 int PARSE_EVENTS__TERM_TYPE_NUM ;
 void* strdup (char*) ;

__attribute__((used)) static int check_type_val(struct parse_events_term *term,
     struct parse_events_error *err,
     int type)
{
 if (type == term->type_val)
  return 0;

 if (err) {
  err->idx = term->err_val;
  if (type == PARSE_EVENTS__TERM_TYPE_NUM)
   err->str = strdup("expected numeric value");
  else
   err->str = strdup("expected string value");
 }
 return -EINVAL;
}
