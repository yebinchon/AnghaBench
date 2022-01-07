
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf ;


 int DWARF_C_READ ;
 int * dwarf_begin (int ,int ) ;

int main(void)
{
 Dwarf *dbg = dwarf_begin(0, DWARF_C_READ);

 return (long)dbg;
}
