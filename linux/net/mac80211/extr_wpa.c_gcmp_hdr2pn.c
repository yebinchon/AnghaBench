
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline void gcmp_hdr2pn(u8 *pn, const u8 *hdr)
{
 pn[0] = hdr[7];
 pn[1] = hdr[6];
 pn[2] = hdr[5];
 pn[3] = hdr[4];
 pn[4] = hdr[1];
 pn[5] = hdr[0];
}
