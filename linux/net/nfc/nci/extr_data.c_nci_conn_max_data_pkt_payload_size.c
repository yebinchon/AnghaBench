
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int dummy; } ;
struct nci_conn_info {int max_pkt_payload_len; } ;
typedef int __u8 ;


 int EPROTO ;
 struct nci_conn_info* nci_get_conn_info_by_conn_id (struct nci_dev*,int ) ;

int nci_conn_max_data_pkt_payload_size(struct nci_dev *ndev, __u8 conn_id)
{
 struct nci_conn_info *conn_info;

 conn_info = nci_get_conn_info_by_conn_id(ndev, conn_id);
 if (!conn_info)
  return -EPROTO;

 return conn_info->max_pkt_payload_len;
}
