
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ secno ;



__attribute__((used)) static inline unsigned de_size(int namelen, secno down_ptr)
{
 return ((0x1f + namelen + 3) & ~3) + (down_ptr ? 4 : 0);
}
