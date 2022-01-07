
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFINE_IDR (int ) ;
 int idr ;
 int idr_init_base (int *,int) ;
 int idr_u32_test1 (int *,int) ;

void idr_u32_test(int base)
{
 DEFINE_IDR(idr);
 idr_init_base(&idr, base);
 idr_u32_test1(&idr, 10);
 idr_u32_test1(&idr, 0x7fffffff);
 idr_u32_test1(&idr, 0x80000000);
 idr_u32_test1(&idr, 0x80000001);
 idr_u32_test1(&idr, 0xffe00000);
 idr_u32_test1(&idr, 0xffffffff);
}
