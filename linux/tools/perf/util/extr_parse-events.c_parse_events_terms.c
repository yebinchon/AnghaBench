
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events_state {int * terms; } ;
struct list_head {int dummy; } ;


 int PE_START_TERMS ;
 int list_splice (int *,struct list_head*) ;
 int parse_events__scanner (char const*,struct parse_events_state*,int ) ;
 int parse_events_terms__delete (int *) ;
 int zfree (int **) ;

int parse_events_terms(struct list_head *terms, const char *str)
{
 struct parse_events_state parse_state = {
  .terms = ((void*)0),
 };
 int ret;

 ret = parse_events__scanner(str, &parse_state, PE_START_TERMS);
 if (!ret) {
  list_splice(parse_state.terms, terms);
  zfree(&parse_state.terms);
  return 0;
 }

 parse_events_terms__delete(parse_state.terms);
 return ret;
}
