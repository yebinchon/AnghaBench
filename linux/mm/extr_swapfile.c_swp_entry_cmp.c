
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;


 scalar_t__ swp_type (int const) ;

__attribute__((used)) static int swp_entry_cmp(const void *ent1, const void *ent2)
{
 const swp_entry_t *e1 = ent1, *e2 = ent2;

 return (int)swp_type(*e1) - (int)swp_type(*e2);
}
