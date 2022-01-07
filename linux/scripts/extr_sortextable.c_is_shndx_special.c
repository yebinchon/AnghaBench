
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SHN_HIRESERVE ;
 unsigned int SHN_LORESERVE ;
 unsigned int SHN_XINDEX ;

__attribute__((used)) static inline int is_shndx_special(unsigned int i)
{
 return i != SHN_XINDEX && i >= SHN_LORESERVE && i <= SHN_HIRESERVE;
}
