
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfc_target {int dummy; } ;
struct nfc_hci_dev {TYPE_1__* ops; } ;
struct nfc_dev {int dummy; } ;
typedef int __u8 ;
struct TYPE_2__ {int (* dep_link_up ) (struct nfc_hci_dev*,struct nfc_target*,int ,int *,size_t) ;} ;


 struct nfc_hci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int stub1 (struct nfc_hci_dev*,struct nfc_target*,int ,int *,size_t) ;

__attribute__((used)) static int hci_dep_link_up(struct nfc_dev *nfc_dev, struct nfc_target *target,
    __u8 comm_mode, __u8 *gb, size_t gb_len)
{
 struct nfc_hci_dev *hdev = nfc_get_drvdata(nfc_dev);

 if (!hdev->ops->dep_link_up)
  return 0;

 return hdev->ops->dep_link_up(hdev, target, comm_mode,
          gb, gb_len);
}
