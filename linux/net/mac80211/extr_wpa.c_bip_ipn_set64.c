
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;



__attribute__((used)) static inline void bip_ipn_set64(u8 *d, u64 pn)
{
 *d++ = pn;
 *d++ = pn >> 8;
 *d++ = pn >> 16;
 *d++ = pn >> 24;
 *d++ = pn >> 32;
 *d = pn >> 40;
}
