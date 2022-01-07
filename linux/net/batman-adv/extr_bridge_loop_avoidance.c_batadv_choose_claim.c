
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct batadv_bla_claim {int vid; int addr; } ;


 int jhash (int *,int,int) ;

__attribute__((used)) static inline u32 batadv_choose_claim(const void *data, u32 size)
{
 struct batadv_bla_claim *claim = (struct batadv_bla_claim *)data;
 u32 hash = 0;

 hash = jhash(&claim->addr, sizeof(claim->addr), hash);
 hash = jhash(&claim->vid, sizeof(claim->vid), hash);

 return hash % size;
}
