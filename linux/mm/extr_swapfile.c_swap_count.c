
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char SWAP_HAS_CACHE ;

__attribute__((used)) static inline unsigned char swap_count(unsigned char ent)
{
 return ent & ~SWAP_HAS_CACHE;
}
