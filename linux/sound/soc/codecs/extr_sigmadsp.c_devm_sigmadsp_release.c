
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmadsp {int dummy; } ;
struct device {int dummy; } ;


 int sigmadsp_firmware_release (struct sigmadsp*) ;

__attribute__((used)) static void devm_sigmadsp_release(struct device *dev, void *res)
{
 sigmadsp_firmware_release((struct sigmadsp *)res);
}
