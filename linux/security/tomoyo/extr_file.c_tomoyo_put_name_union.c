
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_name_union {int filename; int group; } ;


 int tomoyo_put_group (int ) ;
 int tomoyo_put_name (int ) ;

void tomoyo_put_name_union(struct tomoyo_name_union *ptr)
{
 tomoyo_put_group(ptr->group);
 tomoyo_put_name(ptr->filename);
}
