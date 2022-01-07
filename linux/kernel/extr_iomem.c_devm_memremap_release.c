
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int memunmap (void*) ;

__attribute__((used)) static void devm_memremap_release(struct device *dev, void *res)
{
 memunmap(*(void **)res);
}
