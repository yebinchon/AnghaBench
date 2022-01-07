
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_d0i3_data {int non_streaming; int streaming; int non_d0i3; } ;
struct skl_dev {struct skl_d0i3_data d0i3; } ;
typedef enum d0i3_capability { ____Placeholder_d0i3_capability } d0i3_capability ;






void skl_tplg_d0i3_get(struct skl_dev *skl, enum d0i3_capability caps)
{
 struct skl_d0i3_data *d0i3 = &skl->d0i3;

 switch (caps) {
 case 130:
  d0i3->non_d0i3++;
  break;

 case 128:
  d0i3->streaming++;
  break;

 case 129:
  d0i3->non_streaming++;
  break;
 }
}
