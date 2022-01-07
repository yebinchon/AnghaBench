
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct atmel_classd_pdata {int dummy; } ;


 int EINVAL ;
 struct atmel_classd_pdata* ERR_PTR (int ) ;

__attribute__((used)) static inline struct atmel_classd_pdata *
atmel_classd_dt_init(struct device *dev)
{
 return ERR_PTR(-EINVAL);
}
