
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;





 int FDT_ERR_NOTFOUND ;
 int FDT_ERR_TRUNCATED ;


 int fdt_check_node_offset_ (void const*,int) ;
 int fdt_next_tag (void const*,int,int*) ;

int fdt_next_node(const void *fdt, int offset, int *depth)
{
 int nextoffset = 0;
 uint32_t tag;

 if (offset >= 0)
  if ((nextoffset = fdt_check_node_offset_(fdt, offset)) < 0)
   return nextoffset;

 do {
  offset = nextoffset;
  tag = fdt_next_tag(fdt, offset, &nextoffset);

  switch (tag) {
  case 128:
  case 129:
   break;

  case 132:
   if (depth)
    (*depth)++;
   break;

  case 130:
   if (depth && ((--(*depth)) < 0))
    return nextoffset;
   break;

  case 131:
   if ((nextoffset >= 0)
       || ((nextoffset == -FDT_ERR_TRUNCATED) && !depth))
    return -FDT_ERR_NOTFOUND;
   else
    return nextoffset;
  }
 } while (tag != 132);

 return offset;
}
