
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int get_unaligned_be64 (int *) ;
 int put_unaligned_be64 (int,int *) ;

__attribute__((used)) static void gf_mulx(u8 *pad)
{
 u64 a = get_unaligned_be64(pad);
 u64 b = get_unaligned_be64(pad + 8);

 put_unaligned_be64((a << 1) | (b >> 63), pad);
 put_unaligned_be64((b << 1) ^ ((a >> 63) ? 0x87 : 0), pad + 8);
}
