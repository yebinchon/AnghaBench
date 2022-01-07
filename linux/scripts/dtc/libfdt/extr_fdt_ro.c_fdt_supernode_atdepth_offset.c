
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_BADOFFSET ;
 int FDT_ERR_BADSTRUCTURE ;
 int FDT_ERR_INTERNAL ;
 int FDT_ERR_NOTFOUND ;
 int FDT_RO_PROBE (void const*) ;
 int fdt_next_node (void const*,int,int*) ;

int fdt_supernode_atdepth_offset(const void *fdt, int nodeoffset,
     int supernodedepth, int *nodedepth)
{
 int offset, depth;
 int supernodeoffset = -FDT_ERR_INTERNAL;

 FDT_RO_PROBE(fdt);

 if (supernodedepth < 0)
  return -FDT_ERR_NOTFOUND;

 for (offset = 0, depth = 0;
      (offset >= 0) && (offset <= nodeoffset);
      offset = fdt_next_node(fdt, offset, &depth)) {
  if (depth == supernodedepth)
   supernodeoffset = offset;

  if (offset == nodeoffset) {
   if (nodedepth)
    *nodedepth = depth;

   if (supernodedepth > depth)
    return -FDT_ERR_NOTFOUND;
   else
    return supernodeoffset;
  }
 }

 if ((offset == -FDT_ERR_NOTFOUND) || (offset >= 0))
  return -FDT_ERR_BADOFFSET;
 else if (offset == -FDT_ERR_BADOFFSET)
  return -FDT_ERR_BADSTRUCTURE;

 return offset;
}
