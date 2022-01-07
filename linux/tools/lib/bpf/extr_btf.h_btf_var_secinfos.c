
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_var_secinfo {int dummy; } ;
struct btf_type {int dummy; } ;



__attribute__((used)) static inline struct btf_var_secinfo *
btf_var_secinfos(const struct btf_type *t)
{
 return (struct btf_var_secinfo *)(t + 1);
}
