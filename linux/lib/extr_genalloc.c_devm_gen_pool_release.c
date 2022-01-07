
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gen_pool {int dummy; } ;
struct device {int dummy; } ;


 int gen_pool_destroy (struct gen_pool*) ;

__attribute__((used)) static void devm_gen_pool_release(struct device *dev, void *res)
{
 gen_pool_destroy(*(struct gen_pool **)res);
}
