
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_next_node (void*,int,int*) ;

int fdt_node_end_offset_(void *fdt, int offset)
{
 int depth = 0;

 while ((offset >= 0) && (depth >= 0))
  offset = fdt_next_node(fdt, offset, &depth);

 return offset;
}
