
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int __be32 ;


 int cpu_to_be32 (int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline void hton24(u8 *net, u32 host)
{
 __be32 t;

 t = cpu_to_be32(host);
 memcpy(net, ((u8 *)&t) + 1, 3);
}
