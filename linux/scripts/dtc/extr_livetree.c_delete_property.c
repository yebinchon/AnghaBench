
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int deleted; int labels; } ;


 int delete_labels (int *) ;

void delete_property(struct property *prop)
{
 prop->deleted = 1;
 delete_labels(&prop->labels);
}
