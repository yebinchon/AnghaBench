
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getpagesize () ;

__attribute__((used)) static bool xsk_page_aligned(void *buffer)
{
 unsigned long addr = (unsigned long)buffer;

 return !(addr & (getpagesize() - 1));
}
