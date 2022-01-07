
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline unsigned int j1939_etp_ctl_to_size(const u8 *dat)
{
 return (dat[4] << 24) | (dat[3] << 16) |
  (dat[2] << 8) | (dat[1] << 0);
}
