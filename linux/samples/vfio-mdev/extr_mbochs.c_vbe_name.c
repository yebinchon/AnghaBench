
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t ARRAY_SIZE (char const**) ;
 char const** vbe_name_list ;

__attribute__((used)) static const char *vbe_name(u32 index)
{
 if (index < ARRAY_SIZE(vbe_name_list))
  return vbe_name_list[index];
 return "(invalid)";
}
