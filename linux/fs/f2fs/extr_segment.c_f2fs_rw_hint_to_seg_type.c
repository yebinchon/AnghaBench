
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rw_hint { ____Placeholder_rw_hint } rw_hint ;


 int CURSEG_COLD_DATA ;
 int CURSEG_HOT_DATA ;
 int CURSEG_WARM_DATA ;



int f2fs_rw_hint_to_seg_type(enum rw_hint hint)
{
 switch (hint) {
 case 128:
  return CURSEG_HOT_DATA;
 case 129:
  return CURSEG_COLD_DATA;
 default:
  return CURSEG_WARM_DATA;
 }
}
