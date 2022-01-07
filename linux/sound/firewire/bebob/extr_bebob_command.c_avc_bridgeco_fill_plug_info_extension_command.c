
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int avc_bridgeco_fill_extension_addr (int*,int*) ;

__attribute__((used)) static inline void
avc_bridgeco_fill_plug_info_extension_command(u8 *buf, u8 *addr,
           unsigned int itype)
{
 buf[0] = 0x01;
 buf[2] = 0x02;
 buf[3] = 0xc0;
 avc_bridgeco_fill_extension_addr(buf, addr);
 buf[9] = itype;
}
