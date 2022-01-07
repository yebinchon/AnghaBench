
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_var_secinfo {int offset; } ;



__attribute__((used)) static int compare_vsi_off(const void *_a, const void *_b)
{
 const struct btf_var_secinfo *a = _a;
 const struct btf_var_secinfo *b = _b;

 return a->offset - b->offset;
}
