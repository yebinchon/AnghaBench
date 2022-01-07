
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct btf_verifier_env {TYPE_1__* btf; } ;
struct btf_header {int type_off; int type_len; } ;
struct TYPE_2__ {struct btf_header hdr; } ;


 int EINVAL ;
 int btf_check_all_metas (struct btf_verifier_env*) ;
 int btf_check_all_types (struct btf_verifier_env*) ;
 int btf_verifier_log (struct btf_verifier_env*,char*) ;

__attribute__((used)) static int btf_parse_type_sec(struct btf_verifier_env *env)
{
 const struct btf_header *hdr = &env->btf->hdr;
 int err;


 if (hdr->type_off & (sizeof(u32) - 1)) {
  btf_verifier_log(env, "Unaligned type_off");
  return -EINVAL;
 }

 if (!hdr->type_len) {
  btf_verifier_log(env, "No type found");
  return -EINVAL;
 }

 err = btf_check_all_metas(env);
 if (err)
  return err;

 return btf_check_all_types(env);
}
