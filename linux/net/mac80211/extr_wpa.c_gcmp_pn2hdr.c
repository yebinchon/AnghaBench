
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline void gcmp_pn2hdr(u8 *hdr, const u8 *pn, int key_id)
{
 hdr[0] = pn[5];
 hdr[1] = pn[4];
 hdr[2] = 0;
 hdr[3] = 0x20 | (key_id << 6);
 hdr[4] = pn[3];
 hdr[5] = pn[2];
 hdr[6] = pn[1];
 hdr[7] = pn[0];
}
