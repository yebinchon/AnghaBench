
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int madvise_need_mmap_write(int behavior)
{
 switch (behavior) {
 case 129:
 case 128:
 case 132:
 case 133:
 case 130:
 case 131:
  return 0;
 default:

  return 1;
 }
}
