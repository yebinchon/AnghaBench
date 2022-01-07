
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int name_off; int info; int size; } ;


 long hash_combine (long,int) ;

__attribute__((used)) static long btf_hash_enum(struct btf_type *t)
{
 long h;


 h = hash_combine(0, t->name_off);
 h = hash_combine(h, t->info & ~0xffff);
 h = hash_combine(h, t->size);
 return h;
}
