
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *wm_adsp_mem_region_name(unsigned int type)
{
 switch (type) {
 case 134:
  return "PM";
 case 130:
  return "PM_PACKED";
 case 135:
  return "DM";
 case 132:
  return "XM";
 case 129:
  return "XM_PACKED";
 case 131:
  return "YM";
 case 128:
  return "YM_PACKED";
 case 133:
  return "ZM";
 default:
  return ((void*)0);
 }
}
