
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
struct btf_param {int type; int name_off; } ;
typedef int __u16 ;


 long btf_hash_common (struct btf_type*) ;
 struct btf_param* btf_params (struct btf_type*) ;
 int btf_vlen (struct btf_type*) ;
 long hash_combine (long,int ) ;

__attribute__((used)) static long btf_hash_fnproto(struct btf_type *t)
{
 const struct btf_param *member = btf_params(t);
 __u16 vlen = btf_vlen(t);
 long h = btf_hash_common(t);
 int i;

 for (i = 0; i < vlen; i++) {
  h = hash_combine(h, member->name_off);
  h = hash_combine(h, member->type);
  member++;
 }
 return h;
}
