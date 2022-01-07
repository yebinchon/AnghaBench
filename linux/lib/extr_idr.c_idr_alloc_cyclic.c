
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idr {int idr_next; } ;
typedef int gfp_t ;


 int ENOSPC ;
 int INT_MAX ;
 int idr_alloc_u32 (struct idr*,void*,int*,int,int ) ;

int idr_alloc_cyclic(struct idr *idr, void *ptr, int start, int end, gfp_t gfp)
{
 u32 id = idr->idr_next;
 int err, max = end > 0 ? end - 1 : INT_MAX;

 if ((int)id < start)
  id = start;

 err = idr_alloc_u32(idr, ptr, &id, max, gfp);
 if ((err == -ENOSPC) && (id > start)) {
  id = start;
  err = idr_alloc_u32(idr, ptr, &id, max, gfp);
 }
 if (err)
  return err;

 idr->idr_next = id + 1;
 return id;
}
