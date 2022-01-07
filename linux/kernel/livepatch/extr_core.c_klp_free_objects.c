
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klp_patch {int dummy; } ;


 int __klp_free_objects (struct klp_patch*,int) ;

__attribute__((used)) static void klp_free_objects(struct klp_patch *patch)
{
 __klp_free_objects(patch, 0);
}
