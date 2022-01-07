
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct btf_verifier_env {struct btf* btf; } ;
struct btf_type {int type; } ;
struct btf_param {scalar_t__ type; int name_off; } ;
struct btf {int dummy; } ;


 int EINVAL ;
 struct btf_type* btf_type_by_id (struct btf const*,int ) ;
 int btf_type_is_func_proto (struct btf_type const*) ;
 size_t btf_type_vlen (struct btf_type const*) ;
 int btf_verifier_log_type (struct btf_verifier_env*,struct btf_type const*,char*,...) ;

__attribute__((used)) static int btf_func_check(struct btf_verifier_env *env,
     const struct btf_type *t)
{
 const struct btf_type *proto_type;
 const struct btf_param *args;
 const struct btf *btf;
 u16 nr_args, i;

 btf = env->btf;
 proto_type = btf_type_by_id(btf, t->type);

 if (!proto_type || !btf_type_is_func_proto(proto_type)) {
  btf_verifier_log_type(env, t, "Invalid type_id");
  return -EINVAL;
 }

 args = (const struct btf_param *)(proto_type + 1);
 nr_args = btf_type_vlen(proto_type);
 for (i = 0; i < nr_args; i++) {
  if (!args[i].name_off && args[i].type) {
   btf_verifier_log_type(env, t, "Invalid arg#%u", i + 1);
   return -EINVAL;
  }
 }

 return 0;
}
