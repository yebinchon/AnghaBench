
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsp_image_seg {int count; } ;


 int data ;
 size_t struct_size (struct dsp_image_seg const*,int ,int ) ;

__attribute__((used)) static size_t dsp_sizeof(const struct dsp_image_seg *p)
{
 return struct_size(p, data, p->count);
}
