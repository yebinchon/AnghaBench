
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kprobe_add_ksym_blacklist (unsigned long) ;

int kprobe_add_area_blacklist(unsigned long start, unsigned long end)
{
 unsigned long entry;
 int ret = 0;

 for (entry = start; entry < end; entry += ret) {
  ret = kprobe_add_ksym_blacklist(entry);
  if (ret < 0)
   return ret;
  if (ret == 0)
   ret = 1;
 }
 return 0;
}
