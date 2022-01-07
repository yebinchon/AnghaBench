
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_conn {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct hci_conn*) ;
 struct hci_conn* to_hci_conn (struct device*) ;

__attribute__((used)) static void bt_link_release(struct device *dev)
{
 struct hci_conn *conn = to_hci_conn(dev);
 kfree(conn);
}
