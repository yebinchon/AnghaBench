
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strfilter {int root; } ;


 int free (struct strfilter*) ;
 int strfilter_node__delete (int ) ;

void strfilter__delete(struct strfilter *filter)
{
 if (filter) {
  strfilter_node__delete(filter->root);
  free(filter);
 }
}
