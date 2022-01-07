
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
struct btf_array {int nelems; int index_type; int type; } ;


 struct btf_array* btf_array (struct btf_type*) ;
 long btf_hash_common (struct btf_type*) ;
 long hash_combine (long,int ) ;

__attribute__((used)) static long btf_hash_array(struct btf_type *t)
{
 const struct btf_array *info = btf_array(t);
 long h = btf_hash_common(t);

 h = hash_combine(h, info->type);
 h = hash_combine(h, info->index_type);
 h = hash_combine(h, info->nelems);
 return h;
}
