
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int size; int info; int name_off; } ;


 long hash_combine (long,int ) ;

__attribute__((used)) static long btf_hash_common(struct btf_type *t)
{
 long h;

 h = hash_combine(0, t->name_off);
 h = hash_combine(h, t->info);
 h = hash_combine(h, t->size);
 return h;
}
