
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline const void *arch_kasan_set_tag(const void *addr, u8 tag)
{
 return addr;
}
