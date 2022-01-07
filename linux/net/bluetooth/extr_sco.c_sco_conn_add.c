
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sco_conn {scalar_t__ mtu; struct hci_conn* hcon; int lock; } ;
struct hci_dev {scalar_t__ sco_mtu; } ;
struct hci_conn {struct sco_conn* sco_data; struct hci_dev* hdev; } ;


 int BT_DBG (char*,struct hci_conn*,struct sco_conn*) ;
 int GFP_KERNEL ;
 struct sco_conn* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct sco_conn *sco_conn_add(struct hci_conn *hcon)
{
 struct hci_dev *hdev = hcon->hdev;
 struct sco_conn *conn = hcon->sco_data;

 if (conn)
  return conn;

 conn = kzalloc(sizeof(struct sco_conn), GFP_KERNEL);
 if (!conn)
  return ((void*)0);

 spin_lock_init(&conn->lock);

 hcon->sco_data = conn;
 conn->hcon = hcon;

 if (hdev->sco_mtu > 0)
  conn->mtu = hdev->sco_mtu;
 else
  conn->mtu = 60;

 BT_DBG("hcon %p conn %p", hcon, conn);

 return conn;
}
