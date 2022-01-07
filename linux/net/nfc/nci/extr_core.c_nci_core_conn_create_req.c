
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int dummy; } ;
struct core_conn_create_data {int cmd; int length; } ;


 int NCI_OP_CORE_CONN_CREATE_CMD ;
 int nci_send_cmd (struct nci_dev*,int ,int ,int ) ;

__attribute__((used)) static void nci_core_conn_create_req(struct nci_dev *ndev, unsigned long opt)
{
 struct core_conn_create_data *data =
     (struct core_conn_create_data *)opt;

 nci_send_cmd(ndev, NCI_OP_CORE_CONN_CREATE_CMD, data->length, data->cmd);
}
