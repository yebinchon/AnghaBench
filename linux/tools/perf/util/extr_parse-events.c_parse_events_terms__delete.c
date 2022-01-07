
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int free (struct list_head*) ;
 int parse_events_terms__purge (struct list_head*) ;

void parse_events_terms__delete(struct list_head *terms)
{
 if (!terms)
  return;
 parse_events_terms__purge(terms);
 free(terms);
}
