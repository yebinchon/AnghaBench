
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static bool is_one_byte_cmd(u8 status)
{
 return status == 0xf6 ||
        status >= 0xf8;
}
