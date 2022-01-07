
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {char* str; int num; } ;
struct parse_events_term {int weak; int type_val; TYPE_1__ val; int list; } ;


 int EINVAL ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;


 int free (struct parse_events_term*) ;
 struct parse_events_term* malloc (int) ;

__attribute__((used)) static int new_term(struct parse_events_term **_term,
      struct parse_events_term *temp,
      char *str, u64 num)
{
 struct parse_events_term *term;

 term = malloc(sizeof(*term));
 if (!term)
  return -ENOMEM;

 *term = *temp;
 INIT_LIST_HEAD(&term->list);
 term->weak = 0;

 switch (term->type_val) {
 case 129:
  term->val.num = num;
  break;
 case 128:
  term->val.str = str;
  break;
 default:
  free(term);
  return -EINVAL;
 }

 *_term = term;
 return 0;
}
