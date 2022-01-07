
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_loopback_data {int data; int conn_id; } ;
struct nci_dev {int dummy; } ;


 int nci_send_data (struct nci_dev*,int ,int ) ;

__attribute__((used)) static void nci_send_data_req(struct nci_dev *ndev, unsigned long opt)
{
 struct nci_loopback_data *data = (struct nci_loopback_data *)opt;

 nci_send_data(ndev, data->conn_id, data->data);
}
