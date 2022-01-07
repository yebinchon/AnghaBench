
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
struct btf_array {scalar_t__ type; scalar_t__ index_type; scalar_t__ nelems; } ;


 struct btf_array* btf_array (struct btf_type*) ;
 int btf_equal_common (struct btf_type*,struct btf_type*) ;

__attribute__((used)) static bool btf_equal_array(struct btf_type *t1, struct btf_type *t2)
{
 const struct btf_array *info1, *info2;

 if (!btf_equal_common(t1, t2))
  return 0;

 info1 = btf_array(t1);
 info2 = btf_array(t2);
 return info1->type == info2->type &&
        info1->index_type == info2->index_type &&
        info1->nelems == info2->nelems;
}
