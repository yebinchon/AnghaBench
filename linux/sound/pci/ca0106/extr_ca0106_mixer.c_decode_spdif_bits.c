
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void decode_spdif_bits(unsigned char *status, unsigned int bits)
{
 status[0] = (bits >> 0) & 0xff;
 status[1] = (bits >> 8) & 0xff;
 status[2] = (bits >> 16) & 0xff;
 status[3] = (bits >> 24) & 0xff;
}
