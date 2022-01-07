
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
typedef scalar_t__ __u32 ;


 int btf_equal_common (struct btf_type*,struct btf_type*) ;

__attribute__((used)) static bool btf_equal_int(struct btf_type *t1, struct btf_type *t2)
{
 __u32 info1, info2;

 if (!btf_equal_common(t1, t2))
  return 0;
 info1 = *(__u32 *)(t1 + 1);
 info2 = *(__u32 *)(t2 + 1);
 return info1 == info2;
}
