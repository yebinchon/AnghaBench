
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



__attribute__((used)) static int devm_memremap_match(struct device *dev, void *res, void *match_data)
{
 return *(void **)res == match_data;
}
