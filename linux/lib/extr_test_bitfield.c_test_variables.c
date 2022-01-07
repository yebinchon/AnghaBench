
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK (int ,int) ;
 int u16 ;
 int u32 ;
 int u64 ;
 int u8 ;

__attribute__((used)) static int test_variables(void)
{
 CHECK(u8, 0x0f);
 CHECK(u8, 0xf0);
 CHECK(u8, 0x38);

 CHECK(u16, 0x0038);
 CHECK(u16, 0x0380);
 CHECK(u16, 0x3800);
 CHECK(u16, 0x8000);

 CHECK(u32, 0x80000000);
 CHECK(u32, 0x7f000000);
 CHECK(u32, 0x07e00000);
 CHECK(u32, 0x00018000);

 CHECK(u64, 0x8000000000000000ull);
 CHECK(u64, 0x7f00000000000000ull);
 CHECK(u64, 0x0001800000000000ull);
 CHECK(u64, 0x0000000080000000ull);
 CHECK(u64, 0x000000007f000000ull);
 CHECK(u64, 0x0000000018000000ull);
 CHECK(u64, 0x0000001f8000000ull);

 return 0;
}
