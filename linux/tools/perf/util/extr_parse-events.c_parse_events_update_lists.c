
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int free (struct list_head*) ;
 int list_splice_tail (struct list_head*,struct list_head*) ;

void parse_events_update_lists(struct list_head *list_event,
          struct list_head *list_all)
{





 list_splice_tail(list_event, list_all);
 free(list_event);
}
