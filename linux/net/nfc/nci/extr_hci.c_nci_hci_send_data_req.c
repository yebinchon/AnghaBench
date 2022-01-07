
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int dummy; } ;
struct nci_data {int data_len; int data; int cmd; int pipe; } ;


 int nci_hci_send_data (struct nci_dev*,int ,int ,int ,int ) ;

__attribute__((used)) static void nci_hci_send_data_req(struct nci_dev *ndev, unsigned long opt)
{
 struct nci_data *data = (struct nci_data *)opt;

 nci_hci_send_data(ndev, data->pipe, data->cmd,
     data->data, data->data_len);
}
