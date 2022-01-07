
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static bool is_two_bytes_cmd(u8 status)
{
 return (status >= 0xc0 && status <= 0xdf) ||
        status == 0xf1 ||
        status == 0xf3;
}
