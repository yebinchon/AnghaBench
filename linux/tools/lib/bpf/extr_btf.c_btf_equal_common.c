
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {scalar_t__ name_off; scalar_t__ info; scalar_t__ size; } ;



__attribute__((used)) static bool btf_equal_common(struct btf_type *t1, struct btf_type *t2)
{
 return t1->name_off == t2->name_off &&
        t1->info == t2->info &&
        t1->size == t2->size;
}
