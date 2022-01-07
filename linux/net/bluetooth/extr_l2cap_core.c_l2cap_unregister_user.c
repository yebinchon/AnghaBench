
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2cap_user {int (* remove ) (struct l2cap_conn*,struct l2cap_user*) ;int list; } ;
struct l2cap_conn {TYPE_1__* hcon; } ;
struct hci_dev {int dummy; } ;
struct TYPE_2__ {struct hci_dev* hdev; } ;


 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int stub1 (struct l2cap_conn*,struct l2cap_user*) ;

void l2cap_unregister_user(struct l2cap_conn *conn, struct l2cap_user *user)
{
 struct hci_dev *hdev = conn->hcon->hdev;

 hci_dev_lock(hdev);

 if (list_empty(&user->list))
  goto out_unlock;

 list_del_init(&user->list);
 user->remove(conn, user);

out_unlock:
 hci_dev_unlock(hdev);
}
