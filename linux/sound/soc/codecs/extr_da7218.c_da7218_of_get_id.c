
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device_id {int data; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int da7218_of_match ;
 struct of_device_id* of_match_device (int ,struct device*) ;

__attribute__((used)) static inline int da7218_of_get_id(struct device *dev)
{
 const struct of_device_id *id = of_match_device(da7218_of_match, dev);

 if (id)
  return (uintptr_t)id->data;
 else
  return -EINVAL;
}
