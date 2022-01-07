
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* rose_addr; } ;
typedef TYPE_1__ rose_address ;



int rosecmp(rose_address *addr1, rose_address *addr2)
{
 int i;

 for (i = 0; i < 5; i++)
  if (addr1->rose_addr[i] != addr2->rose_addr[i])
   return 1;

 return 0;
}
