
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int
get_multiplier_mode_with_index(unsigned int index)
{
 return ((int)index - 1) / 2;
}
