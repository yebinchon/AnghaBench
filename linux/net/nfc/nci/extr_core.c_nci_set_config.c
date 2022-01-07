
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_set_config_param {size_t len; int * val; int id; } ;
struct nci_dev {int dummy; } ;
typedef int __u8 ;


 int NCI_SET_CONFIG_TIMEOUT ;
 int __nci_request (struct nci_dev*,int ,unsigned long,int ) ;
 int msecs_to_jiffies (int ) ;
 int nci_set_config_req ;

int nci_set_config(struct nci_dev *ndev, __u8 id, size_t len, __u8 *val)
{
 struct nci_set_config_param param;

 if (!val || !len)
  return 0;

 param.id = id;
 param.len = len;
 param.val = val;

 return __nci_request(ndev, nci_set_config_req, (unsigned long)&param,
        msecs_to_jiffies(NCI_SET_CONFIG_TIMEOUT));
}
