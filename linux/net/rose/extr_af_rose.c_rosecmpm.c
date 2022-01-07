
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* rose_addr; } ;
typedef TYPE_1__ rose_address ;



int rosecmpm(rose_address *addr1, rose_address *addr2, unsigned short mask)
{
 unsigned int i, j;

 if (mask > 10)
  return 1;

 for (i = 0; i < mask; i++) {
  j = i / 2;

  if ((i % 2) != 0) {
   if ((addr1->rose_addr[j] & 0x0F) != (addr2->rose_addr[j] & 0x0F))
    return 1;
  } else {
   if ((addr1->rose_addr[j] & 0xF0) != (addr2->rose_addr[j] & 0xF0))
    return 1;
  }
 }

 return 0;
}
