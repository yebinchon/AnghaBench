
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ptrdiff_t ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ offset_in_page (char*) ;
 int scnprintf (char*,scalar_t__,char*,int,unsigned long const*) ;

int bitmap_print_to_pagebuf(bool list, char *buf, const unsigned long *maskp,
       int nmaskbits)
{
 ptrdiff_t len = PAGE_SIZE - offset_in_page(buf);

 return list ? scnprintf(buf, len, "%*pbl\n", nmaskbits, maskp) :
        scnprintf(buf, len, "%*pb\n", nmaskbits, maskp);
}
