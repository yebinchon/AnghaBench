
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp_region {int type; int base; } ;


 int WARN (int,char*) ;






__attribute__((used)) static unsigned int wm_adsp_region_to_reg(struct wm_adsp_region const *mem,
       unsigned int offset)
{
 switch (mem->type) {
 case 131:
  return mem->base + (offset * 3);
 case 132:
 case 129:
 case 128:
 case 130:
  return mem->base + (offset * 2);
 default:
  WARN(1, "Unknown memory region type");
  return offset;
 }
}
