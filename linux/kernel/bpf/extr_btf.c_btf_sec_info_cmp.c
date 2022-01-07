
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_sec_info {scalar_t__ len; scalar_t__ off; } ;



__attribute__((used)) static int btf_sec_info_cmp(const void *a, const void *b)
{
 const struct btf_sec_info *x = a;
 const struct btf_sec_info *y = b;

 return (int)(x->off - y->off) ? : (int)(x->len - y->len);
}
