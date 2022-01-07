
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int dummy; } ;
struct nci_cmd_param {size_t len; int * payload; int opcode; } ;
typedef int __u8 ;
typedef int __u16 ;


 int NCI_CMD_TIMEOUT ;
 int __nci_request (struct nci_dev*,int ,unsigned long,int ) ;
 int msecs_to_jiffies (int ) ;
 int nci_generic_req ;

int nci_core_cmd(struct nci_dev *ndev, __u16 opcode, size_t len, __u8 *payload)
{
 struct nci_cmd_param param;

 param.opcode = opcode;
 param.len = len;
 param.payload = payload;

 return __nci_request(ndev, nci_generic_req, (unsigned long)&param,
        msecs_to_jiffies(NCI_CMD_TIMEOUT));
}
