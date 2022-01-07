
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsp_image_seg {scalar_t__ magic; } ;


 scalar_t__ g_magic_value ;

__attribute__((used)) static bool is_valid(const struct dsp_image_seg *p)
{
 return p->magic == g_magic_value;
}
