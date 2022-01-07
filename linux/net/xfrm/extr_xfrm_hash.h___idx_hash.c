
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline unsigned int __idx_hash(u32 index, unsigned int hmask)
{
 return (index ^ (index >> 8)) & hmask;
}
