
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zbud_header {int dummy; } ;


 unsigned long PAGE_MASK ;

__attribute__((used)) static struct zbud_header *handle_to_zbud_header(unsigned long handle)
{
 return (struct zbud_header *)(handle & PAGE_MASK);
}
