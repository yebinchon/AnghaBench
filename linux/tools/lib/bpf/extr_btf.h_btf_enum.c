
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
struct btf_enum {int dummy; } ;



__attribute__((used)) static inline struct btf_enum *btf_enum(const struct btf_type *t)
{
 return (struct btf_enum *)(t + 1);
}
