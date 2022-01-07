
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_verifier_env {int dummy; } ;
struct btf_type {int dummy; } ;
struct btf_array {int nelems; int index_type; int type; } ;


 struct btf_array* btf_type_array (struct btf_type const*) ;
 int btf_verifier_log (struct btf_verifier_env*,char*,int ,int ,int ) ;

__attribute__((used)) static void btf_array_log(struct btf_verifier_env *env,
     const struct btf_type *t)
{
 const struct btf_array *array = btf_type_array(t);

 btf_verifier_log(env, "type_id=%u index_type_id=%u nr_elems=%u",
    array->type, array->index_type, array->nelems);
}
