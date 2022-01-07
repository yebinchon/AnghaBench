
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int id; } ;
struct test_obj_rhl {TYPE_1__ value; } ;



__attribute__((used)) static u32 my_hashfn(const void *data, u32 len, u32 seed)
{
 const struct test_obj_rhl *obj = data;

 return (obj->value.id % 10);
}
