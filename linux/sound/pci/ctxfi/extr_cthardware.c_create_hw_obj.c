
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct hw {int chip_type; int model; struct pci_dev* pci; } ;
typedef enum CTCARDS { ____Placeholder_CTCARDS } CTCARDS ;
typedef enum CHIPTYP { ____Placeholder_CHIPTYP } CHIPTYP ;




 int ENODEV ;
 int create_20k1_hw_obj (struct hw**) ;
 int create_20k2_hw_obj (struct hw**) ;

int create_hw_obj(struct pci_dev *pci, enum CHIPTYP chip_type,
    enum CTCARDS model, struct hw **rhw)
{
 int err;

 switch (chip_type) {
 case 129:
  err = create_20k1_hw_obj(rhw);
  break;
 case 128:
  err = create_20k2_hw_obj(rhw);
  break;
 default:
  err = -ENODEV;
  break;
 }
 if (err)
  return err;

 (*rhw)->pci = pci;
 (*rhw)->chip_type = chip_type;
 (*rhw)->model = model;

 return 0;
}
