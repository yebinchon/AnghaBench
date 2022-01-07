
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_lru_one {scalar_t__ nr_items; int list; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void init_one_lru(struct list_lru_one *l)
{
 INIT_LIST_HEAD(&l->list);
 l->nr_items = 0;
}
