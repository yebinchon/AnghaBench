
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_type {int dummy; } ;


 int key_types_sem ;
 int up_read (int *) ;

void key_type_put(struct key_type *ktype)
{
 up_read(&key_types_sem);
}
