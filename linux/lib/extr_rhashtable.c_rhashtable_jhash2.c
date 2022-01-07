
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int jhash2 (void const*,int ,int ) ;

__attribute__((used)) static u32 rhashtable_jhash2(const void *key, u32 length, u32 seed)
{
 return jhash2(key, length, seed);
}
