
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct btf_verifier_env {int btf; } ;
struct btf_type {int type; } ;
struct btf_param {int name_off; scalar_t__ type; } ;


 int __btf_name_by_offset (int ,int ) ;
 int btf_type_vlen (struct btf_type const*) ;
 int btf_verifier_log (struct btf_verifier_env*,char*,...) ;

__attribute__((used)) static void btf_func_proto_log(struct btf_verifier_env *env,
          const struct btf_type *t)
{
 const struct btf_param *args = (const struct btf_param *)(t + 1);
 u16 nr_args = btf_type_vlen(t), i;

 btf_verifier_log(env, "return=%u args=(", t->type);
 if (!nr_args) {
  btf_verifier_log(env, "void");
  goto done;
 }

 if (nr_args == 1 && !args[0].type) {

  btf_verifier_log(env, "vararg");
  goto done;
 }

 btf_verifier_log(env, "%u %s", args[0].type,
    __btf_name_by_offset(env->btf,
           args[0].name_off));
 for (i = 1; i < nr_args - 1; i++)
  btf_verifier_log(env, ", %u %s", args[i].type,
     __btf_name_by_offset(env->btf,
            args[i].name_off));

 if (nr_args > 1) {
  const struct btf_param *last_arg = &args[nr_args - 1];

  if (last_arg->type)
   btf_verifier_log(env, ", %u %s", last_arg->type,
      __btf_name_by_offset(env->btf,
             last_arg->name_off));
  else
   btf_verifier_log(env, ", vararg");
 }

done:
 btf_verifier_log(env, ")");
}
