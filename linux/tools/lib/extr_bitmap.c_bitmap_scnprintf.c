
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int find_first_bit (unsigned long*,int) ;
 int find_next_bit (unsigned long*,int,int) ;
 scalar_t__ scnprintf (char*,size_t,char*,...) ;

size_t bitmap_scnprintf(unsigned long *bitmap, int nbits,
   char *buf, size_t size)
{

 int cur, rbot, rtop;
 bool first = 1;
 size_t ret = 0;

 rbot = cur = find_first_bit(bitmap, nbits);
 while (cur < nbits) {
  rtop = cur;
  cur = find_next_bit(bitmap, nbits, cur + 1);
  if (cur < nbits && cur <= rtop + 1)
   continue;

  if (!first)
   ret += scnprintf(buf + ret, size - ret, ",");

  first = 0;

  ret += scnprintf(buf + ret, size - ret, "%d", rbot);
  if (rbot < rtop)
   ret += scnprintf(buf + ret, size - ret, "-%d", rtop);

  rbot = cur;
 }
 return ret;
}
