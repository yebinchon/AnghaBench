
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int dummy; } ;
struct hw20k2 {struct hw hw; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct hw ct20k2_preset ;
 struct hw20k2* kzalloc (int,int ) ;

int create_20k2_hw_obj(struct hw **rhw)
{
 struct hw20k2 *hw20k2;

 *rhw = ((void*)0);
 hw20k2 = kzalloc(sizeof(*hw20k2), GFP_KERNEL);
 if (!hw20k2)
  return -ENOMEM;

 hw20k2->hw = ct20k2_preset;
 *rhw = &hw20k2->hw;

 return 0;
}
