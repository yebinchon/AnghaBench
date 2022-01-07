
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct dsp_image_seg const dsp_image_seg ;
typedef scalar_t__ p ;


 scalar_t__ dsp_sizeof (struct dsp_image_seg const*) ;

__attribute__((used)) static const struct dsp_image_seg *get_next_seg_ptr(
    const struct dsp_image_seg *p)
{
 return (struct dsp_image_seg *)((unsigned char *)(p) + dsp_sizeof(p));
}
