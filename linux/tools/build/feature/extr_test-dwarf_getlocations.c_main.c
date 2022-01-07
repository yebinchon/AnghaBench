
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int Dwarf_Op ;
typedef int Dwarf_Attribute ;
typedef int Dwarf_Addr ;


 scalar_t__ dwarf_getlocations (int *,int ,int *,int *,int *,int **,size_t*) ;

int main(void)
{
 Dwarf_Addr base, start, end;
 Dwarf_Attribute attr;
 Dwarf_Op *op;
        size_t nops;
 ptrdiff_t offset = 0;
        return (int)dwarf_getlocations(&attr, offset, &base, &start, &end, &op, &nops);
}
