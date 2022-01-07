
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;


 struct btf_type const btf_void ;

bool btf_type_is_void(const struct btf_type *t)
{
 return t == &btf_void;
}
