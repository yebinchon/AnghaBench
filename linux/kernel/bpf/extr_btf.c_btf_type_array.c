
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
struct btf_array {int dummy; } ;



__attribute__((used)) static const struct btf_array *btf_type_array(const struct btf_type *t)
{
 return (const struct btf_array *)(t + 1);
}
