
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct btf_type {int dummy; } ;



__attribute__((used)) static u32 btf_type_int(const struct btf_type *t)
{
 return *(u32 *)(t + 1);
}
