
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klp_shadow {void* obj; unsigned long id; } ;



__attribute__((used)) static inline bool klp_shadow_match(struct klp_shadow *shadow, void *obj,
    unsigned long id)
{
 return shadow->obj == obj && shadow->id == id;
}
