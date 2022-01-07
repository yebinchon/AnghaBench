
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int utf32nfdi; } ;


 int print_utf32 (int ) ;
 int printf (char*,...) ;
 TYPE_1__* unicode_data ;

__attribute__((used)) static void print_utf32nfdi(unsigned int unichar)
{
 printf(" %X ->", unichar);
 print_utf32(unicode_data[unichar].utf32nfdi);
 printf("\n");
}
