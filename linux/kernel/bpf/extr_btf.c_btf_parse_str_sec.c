
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_verifier_env {struct btf* btf; } ;
struct btf_header {int str_off; int str_len; } ;
struct btf {char* nohdr_data; char const* data; int data_size; char const* strings; struct btf_header hdr; } ;


 int BTF_MAX_NAME_OFFSET ;
 int EINVAL ;
 int btf_verifier_log (struct btf_verifier_env*,char*) ;

__attribute__((used)) static int btf_parse_str_sec(struct btf_verifier_env *env)
{
 const struct btf_header *hdr;
 struct btf *btf = env->btf;
 const char *start, *end;

 hdr = &btf->hdr;
 start = btf->nohdr_data + hdr->str_off;
 end = start + hdr->str_len;

 if (end != btf->data + btf->data_size) {
  btf_verifier_log(env, "String section is not at the end");
  return -EINVAL;
 }

 if (!hdr->str_len || hdr->str_len - 1 > BTF_MAX_NAME_OFFSET ||
     start[0] || end[-1]) {
  btf_verifier_log(env, "Invalid string section");
  return -EINVAL;
 }

 btf->strings = start;

 return 0;
}
