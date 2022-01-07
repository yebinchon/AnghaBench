
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct oxygen {int model; } ;


 int model_se6x ;

__attribute__((used)) static int se6x_get_model(struct oxygen *chip,
     const struct pci_device_id *pci_id)
{
 chip->model = model_se6x;
 return 0;
}
