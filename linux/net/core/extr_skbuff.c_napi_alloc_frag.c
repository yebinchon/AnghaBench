
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_ATOMIC ;
 unsigned int SKB_DATA_ALIGN (unsigned int) ;
 void* __napi_alloc_frag (unsigned int,int ) ;

void *napi_alloc_frag(unsigned int fragsz)
{
 fragsz = SKB_DATA_ALIGN(fragsz);

 return __napi_alloc_frag(fragsz, GFP_ATOMIC);
}
