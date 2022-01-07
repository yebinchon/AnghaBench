
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int klp_shadow_ctor_t ;
typedef int gfp_t ;


 void* __klp_shadow_get_or_alloc (void*,unsigned long,size_t,int ,int ,void*,int) ;

void *klp_shadow_get_or_alloc(void *obj, unsigned long id,
         size_t size, gfp_t gfp_flags,
         klp_shadow_ctor_t ctor, void *ctor_data)
{
 return __klp_shadow_get_or_alloc(obj, id, size, gfp_flags,
      ctor, ctor_data, 0);
}
