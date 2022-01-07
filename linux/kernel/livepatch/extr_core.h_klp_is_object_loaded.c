
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klp_object {scalar_t__ mod; int name; } ;



__attribute__((used)) static inline bool klp_is_object_loaded(struct klp_object *obj)
{
 return !obj->name || obj->mod;
}
