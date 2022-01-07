
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ __be32 ;


 int be32_to_cpu (scalar_t__) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline u32 ntoh24(u8 *net)
{
 __be32 t = 0;

 memcpy(((u8 *)&t) + 1, net, 3);
 return be32_to_cpu(t);
}
