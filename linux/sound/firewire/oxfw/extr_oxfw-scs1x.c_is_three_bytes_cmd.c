
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static bool is_three_bytes_cmd(u8 status)
{
 return (status >= 0x80 && status <= 0xbf) ||
        (status >= 0xe0 && status <= 0xef) ||
        status == 0xf2;
}
