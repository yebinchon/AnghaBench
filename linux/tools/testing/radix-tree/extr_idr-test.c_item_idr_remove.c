
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int index; } ;
struct idr {int dummy; } ;


 int assert (int) ;
 int free (struct item*) ;
 struct item* idr_find (struct idr*,int) ;
 int idr_remove (struct idr*,int) ;

void item_idr_remove(struct idr *idr, int id)
{
 struct item *item = idr_find(idr, id);
 assert(item->index == id);
 idr_remove(idr, id);
 free(item);
}
