
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events_term {char* config; int type_term; int type_val; } ;
struct event_symbol {scalar_t__ symbol; } ;


 int BUG_ON (int) ;
 int PARSE_EVENTS__TERM_TYPE_STR ;
 int PARSE_EVENTS__TERM_TYPE_USER ;
 unsigned int PERF_COUNT_HW_MAX ;
 struct event_symbol* event_symbols_hw ;
 int new_term (struct parse_events_term**,struct parse_events_term*,char*,int ) ;

int parse_events_term__sym_hw(struct parse_events_term **term,
         char *config, unsigned idx)
{
 struct event_symbol *sym;
 struct parse_events_term temp = {
  .type_val = PARSE_EVENTS__TERM_TYPE_STR,
  .type_term = PARSE_EVENTS__TERM_TYPE_USER,
  .config = config ?: (char *) "event",
 };

 BUG_ON(idx >= PERF_COUNT_HW_MAX);
 sym = &event_symbols_hw[idx];

 return new_term(term, &temp, (char *) sym->symbol, 0);
}
