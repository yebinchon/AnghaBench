
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct header_iter {int dev; } ;


 int kfree (struct header_iter*) ;
 int pci_dev_put (int ) ;

__attribute__((used)) static void destroy_header_iter(struct header_iter *hiter)
{
 if (!hiter)
  return;
 pci_dev_put(hiter->dev);
 kfree(hiter);
}
