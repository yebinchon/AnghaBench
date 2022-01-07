
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ELFDATA2LSB ;
 int ELFDATA2MSB ;

__attribute__((used)) static bool check_need_swap(int file_endian)
{
 const int data = 1;
 u8 *check = (u8 *)&data;
 int host_endian;

 if (check[0] == 1)
  host_endian = ELFDATA2LSB;
 else
  host_endian = ELFDATA2MSB;

 return host_endian != file_endian;
}
