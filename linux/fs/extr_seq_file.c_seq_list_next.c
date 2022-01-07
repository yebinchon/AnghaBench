
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; } ;
typedef int loff_t ;



struct list_head *seq_list_next(void *v, struct list_head *head, loff_t *ppos)
{
 struct list_head *lh;

 lh = ((struct list_head *)v)->next;
 ++*ppos;
 return lh == head ? ((void*)0) : lh;
}
