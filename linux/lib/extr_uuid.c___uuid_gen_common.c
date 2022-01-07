
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int prandom_bytes (int*,int) ;

__attribute__((used)) static void __uuid_gen_common(__u8 b[16])
{
 prandom_bytes(b, 16);

 b[8] = (b[8] & 0x3F) | 0x80;
}
