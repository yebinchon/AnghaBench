
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool ac97_ids_match(unsigned int id1, unsigned int id2,
      unsigned int mask)
{
 return (id1 & mask) == (id2 & mask);
}
