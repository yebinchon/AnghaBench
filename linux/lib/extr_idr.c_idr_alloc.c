
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idr {int dummy; } ;
typedef int gfp_t ;


 int EINVAL ;
 int INT_MAX ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int idr_alloc_u32 (struct idr*,void*,int*,int,int ) ;

int idr_alloc(struct idr *idr, void *ptr, int start, int end, gfp_t gfp)
{
 u32 id = start;
 int ret;

 if (WARN_ON_ONCE(start < 0))
  return -EINVAL;

 ret = idr_alloc_u32(idr, ptr, &id, end > 0 ? end - 1 : INT_MAX, gfp);
 if (ret)
  return ret;

 return id;
}
