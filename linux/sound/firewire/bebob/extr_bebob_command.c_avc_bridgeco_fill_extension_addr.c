
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline void
avc_bridgeco_fill_extension_addr(u8 *buf, u8 *addr)
{
 buf[1] = addr[0];
 memcpy(buf + 4, addr + 1, 5);
}
