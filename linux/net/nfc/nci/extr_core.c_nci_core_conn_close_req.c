
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int dummy; } ;
typedef unsigned long __u8 ;


 int NCI_OP_CORE_CONN_CLOSE_CMD ;
 int nci_send_cmd (struct nci_dev*,int ,int,unsigned long*) ;

__attribute__((used)) static void nci_core_conn_close_req(struct nci_dev *ndev, unsigned long opt)
{
 __u8 conn_id = opt;

 nci_send_cmd(ndev, NCI_OP_CORE_CONN_CLOSE_CMD, 1, &conn_id);
}
