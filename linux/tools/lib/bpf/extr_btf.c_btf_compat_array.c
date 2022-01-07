
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf_type {int dummy; } ;
struct TYPE_2__ {scalar_t__ nelems; } ;


 TYPE_1__* btf_array (struct btf_type*) ;
 int btf_equal_common (struct btf_type*,struct btf_type*) ;

__attribute__((used)) static bool btf_compat_array(struct btf_type *t1, struct btf_type *t2)
{
 if (!btf_equal_common(t1, t2))
  return 0;

 return btf_array(t1)->nelems == btf_array(t2)->nelems;
}
