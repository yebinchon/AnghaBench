
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {scalar_t__ host_bigendian; scalar_t__ file_bigendian; } ;



unsigned short tep_data2host2(struct tep_handle *tep, unsigned short data)
{
 unsigned short swap;

 if (!tep || tep->host_bigendian == tep->file_bigendian)
  return data;

 swap = ((data & 0xffULL) << 8) |
  ((data & (0xffULL << 8)) >> 8);

 return swap;
}
