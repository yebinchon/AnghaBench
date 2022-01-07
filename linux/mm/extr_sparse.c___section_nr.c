
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_section {int dummy; } ;


 int* mem_section ;

unsigned long __section_nr(struct mem_section *ms)
{
 return (unsigned long)(ms - mem_section[0]);
}
