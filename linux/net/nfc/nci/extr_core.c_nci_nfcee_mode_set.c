
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct nci_nfcee_mode_set_cmd {void* nfcee_mode; void* nfcee_id; } ;
struct nci_dev {int dummy; } ;


 int NCI_CMD_TIMEOUT ;
 int __nci_request (struct nci_dev*,int ,unsigned long,int ) ;
 int msecs_to_jiffies (int ) ;
 int nci_nfcee_mode_set_req ;

int nci_nfcee_mode_set(struct nci_dev *ndev, u8 nfcee_id, u8 nfcee_mode)
{
 struct nci_nfcee_mode_set_cmd cmd;

 cmd.nfcee_id = nfcee_id;
 cmd.nfcee_mode = nfcee_mode;

 return __nci_request(ndev, nci_nfcee_mode_set_req,
        (unsigned long)&cmd,
        msecs_to_jiffies(NCI_CMD_TIMEOUT));
}
