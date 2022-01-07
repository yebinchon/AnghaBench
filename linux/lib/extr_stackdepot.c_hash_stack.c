
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int STACK_HASH_SEED ;
 int jhash2 (int *,unsigned int,int ) ;

__attribute__((used)) static inline u32 hash_stack(unsigned long *entries, unsigned int size)
{
 return jhash2((u32 *)entries,
          size * sizeof(unsigned long) / sizeof(u32),
          STACK_HASH_SEED);
}
