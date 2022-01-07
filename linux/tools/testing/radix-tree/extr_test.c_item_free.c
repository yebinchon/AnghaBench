
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int dummy; } ;


 int free (struct item*) ;
 int item_sanity (struct item*,unsigned long) ;

void item_free(struct item *item, unsigned long index)
{
 item_sanity(item, index);
 free(item);
}
