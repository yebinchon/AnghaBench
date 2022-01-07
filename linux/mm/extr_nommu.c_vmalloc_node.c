
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* vmalloc (unsigned long) ;

void *vmalloc_node(unsigned long size, int node)
{
 return vmalloc(size);
}
