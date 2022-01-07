
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_cmd_ars_status {int dummy; } ;
struct device {int dummy; } ;
struct ars_state {int lock; int ars_status; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ SZ_4K ;
 int devm_kzalloc (struct device*,scalar_t__,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ars_state_init(struct device *dev, struct ars_state *ars_state)
{

 ars_state->ars_status = devm_kzalloc(dev,
   sizeof(struct nd_cmd_ars_status) + SZ_4K, GFP_KERNEL);
 if (!ars_state->ars_status)
  return -ENOMEM;
 spin_lock_init(&ars_state->lock);
 return 0;
}
