
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ test_bit (int,unsigned long*) ;

__attribute__((used)) static unsigned int
bmap_to_share_mode(unsigned long bmap) {
 int i;
 unsigned int access = 0;

 for (i = 1; i < 4; i++) {
  if (test_bit(i, &bmap))
   access |= i;
 }
 return access;
}
