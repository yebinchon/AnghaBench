
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {unsigned long index; unsigned int order; } ;


 struct item* malloc (int) ;

struct item *item_create(unsigned long index, unsigned int order)
{
 struct item *ret = malloc(sizeof(*ret));

 ret->index = index;
 ret->order = order;
 return ret;
}
