
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ETH_ALEN ;
 int jhash (void const*,int ,int) ;

__attribute__((used)) static inline u32 batadv_choose_orig(const void *data, u32 size)
{
 u32 hash = 0;

 hash = jhash(data, ETH_ALEN, hash);
 return hash % size;
}
