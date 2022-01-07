
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fl_flow_mask {int range; int key; } ;


 void* fl_key_get_start (int *,struct fl_flow_mask*) ;
 int fl_mask_range (struct fl_flow_mask*) ;
 int memcpy (void*,void const*,int ) ;

__attribute__((used)) static void fl_mask_copy(struct fl_flow_mask *dst,
    struct fl_flow_mask *src)
{
 const void *psrc = fl_key_get_start(&src->key, src);
 void *pdst = fl_key_get_start(&dst->key, src);

 memcpy(pdst, psrc, fl_mask_range(src));
 dst->range = src->range;
}
