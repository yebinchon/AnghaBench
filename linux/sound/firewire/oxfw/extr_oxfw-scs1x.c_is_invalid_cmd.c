
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static bool is_invalid_cmd(u8 status)
{
 return status == 0xf4 ||
        status == 0xf5 ||
        status == 0xf9 ||
        status == 0xfd;
}
