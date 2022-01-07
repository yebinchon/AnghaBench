
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hpi_message {int object; int obj_index; } ;
struct hpi_adapter_obj {int dummy; } ;





__attribute__((used)) static u16 get_dsp_index(struct hpi_adapter_obj *pao, struct hpi_message *phm)
{
 u16 ret = 0;
 switch (phm->object) {
 case 129:
  if (phm->obj_index < 2)
   ret = 1;
  break;
 case 128:
  ret = phm->obj_index;
  break;
 default:
  break;
 }
 return ret;
}
