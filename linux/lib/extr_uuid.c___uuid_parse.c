
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __u8 ;


 int EINVAL ;
 int hex_to_bin (char const) ;
 int uuid_is_valid (char const*) ;

__attribute__((used)) static int __uuid_parse(const char *uuid, __u8 b[16], const u8 ei[16])
{
 static const u8 si[16] = {0,2,4,6,9,11,14,16,19,21,24,26,28,30,32,34};
 unsigned int i;

 if (!uuid_is_valid(uuid))
  return -EINVAL;

 for (i = 0; i < 16; i++) {
  int hi = hex_to_bin(uuid[si[i] + 0]);
  int lo = hex_to_bin(uuid[si[i] + 1]);

  b[ei[i]] = (hi << 4) | lo;
 }

 return 0;
}
