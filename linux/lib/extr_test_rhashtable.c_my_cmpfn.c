
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct test_obj_val {int id; } ;
struct TYPE_2__ {int id; } ;
struct test_obj_rhl {TYPE_1__ value; } ;
struct rhashtable_compare_arg {struct test_obj_val* key; } ;



__attribute__((used)) static int my_cmpfn(struct rhashtable_compare_arg *arg, const void *obj)
{
 const struct test_obj_rhl *test_obj = obj;
 const struct test_obj_val *val = arg->key;

 return test_obj->value.id - val->id;
}
