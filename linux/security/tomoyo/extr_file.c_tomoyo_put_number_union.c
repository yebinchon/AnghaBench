
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_number_union {int group; } ;


 int tomoyo_put_group (int ) ;

void tomoyo_put_number_union(struct tomoyo_number_union *ptr)
{
 tomoyo_put_group(ptr->group);
}
