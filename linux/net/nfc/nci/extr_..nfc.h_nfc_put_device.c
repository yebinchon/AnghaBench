
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_dev {int dev; } ;


 int put_device (int *) ;

__attribute__((used)) static inline void nfc_put_device(struct nfc_dev *dev)
{
 put_device(&dev->dev);
}
