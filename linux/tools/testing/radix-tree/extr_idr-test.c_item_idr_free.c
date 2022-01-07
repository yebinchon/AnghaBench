
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int index; } ;


 int assert (int) ;
 int free (void*) ;

int item_idr_free(int id, void *p, void *data)
{
 struct item *item = p;
 assert(item->index == id);
 free(p);

 return 0;
}
