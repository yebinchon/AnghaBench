
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int dummy; } ;
struct hw20k1 {struct hw hw; int reg_pci_lock; int reg_20k1_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct hw ct20k1_preset ;
 struct hw20k1* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

int create_20k1_hw_obj(struct hw **rhw)
{
 struct hw20k1 *hw20k1;

 *rhw = ((void*)0);
 hw20k1 = kzalloc(sizeof(*hw20k1), GFP_KERNEL);
 if (!hw20k1)
  return -ENOMEM;

 spin_lock_init(&hw20k1->reg_20k1_lock);
 spin_lock_init(&hw20k1->reg_pci_lock);

 hw20k1->hw = ct20k1_preset;

 *rhw = &hw20k1->hw;

 return 0;
}
