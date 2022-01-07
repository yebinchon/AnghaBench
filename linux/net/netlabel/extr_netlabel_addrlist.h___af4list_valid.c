
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlbl_af4list {int valid; } ;
struct list_head {struct list_head* next; } ;


 struct netlbl_af4list* __af4list_entry (struct list_head*) ;

__attribute__((used)) static inline struct netlbl_af4list *__af4list_valid(struct list_head *s,
           struct list_head *h)
{
 struct list_head *i = s;
 struct netlbl_af4list *n = __af4list_entry(s);
 while (i != h && !n->valid) {
  i = i->next;
  n = __af4list_entry(i);
 }
 return n;
}
