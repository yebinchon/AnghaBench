
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_phy_iter_data {int (* fn ) (struct wpan_phy*,void*) ;void* data; } ;


 int class_for_each_device (int *,int *,struct wpan_phy_iter_data*,int ) ;
 int wpan_phy_class ;
 int wpan_phy_iter ;

int wpan_phy_for_each(int (*fn)(struct wpan_phy *phy, void *data),
        void *data)
{
 struct wpan_phy_iter_data wpid = {
  .fn = fn,
  .data = data,
 };

 return class_for_each_device(&wpan_phy_class, ((void*)0),
   &wpid, wpan_phy_iter);
}
