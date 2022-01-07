
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
struct btf_param {int dummy; } ;



__attribute__((used)) static inline struct btf_param *btf_params(const struct btf_type *t)
{
 return (struct btf_param *)(t + 1);
}
