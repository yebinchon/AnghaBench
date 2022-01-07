
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_conn {int le_scan_cleanup; TYPE_1__* hdev; } ;
struct TYPE_2__ {int name; } ;


 int BT_DBG (char*,int ,struct hci_conn*) ;
 int hci_conn_get (struct hci_conn*) ;
 int hci_dev_hold (TYPE_1__*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void hci_connect_le_scan_remove(struct hci_conn *conn)
{
 BT_DBG("%s hcon %p", conn->hdev->name, conn);
 hci_dev_hold(conn->hdev);
 hci_conn_get(conn);





 schedule_work(&conn->le_scan_cleanup);
}
