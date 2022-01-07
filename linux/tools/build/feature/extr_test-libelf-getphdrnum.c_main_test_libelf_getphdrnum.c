
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int elf_getphdrnum (int ,size_t*) ;

int main(void)
{
 size_t dst;

 return elf_getphdrnum(0, &dst);
}
