
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2cap_user {int (* probe ) (struct l2cap_conn*,struct l2cap_user*) ;int list; } ;
struct l2cap_conn {int users; int hchan; TYPE_1__* hcon; } ;
struct hci_dev {int dummy; } ;
struct TYPE_2__ {struct hci_dev* hdev; } ;


 int EINVAL ;
 int ENODEV ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int stub1 (struct l2cap_conn*,struct l2cap_user*) ;

int l2cap_register_user(struct l2cap_conn *conn, struct l2cap_user *user)
{
 struct hci_dev *hdev = conn->hcon->hdev;
 int ret;
 hci_dev_lock(hdev);

 if (!list_empty(&user->list)) {
  ret = -EINVAL;
  goto out_unlock;
 }


 if (!conn->hchan) {
  ret = -ENODEV;
  goto out_unlock;
 }

 ret = user->probe(conn, user);
 if (ret)
  goto out_unlock;

 list_add(&user->list, &conn->users);
 ret = 0;

out_unlock:
 hci_dev_unlock(hdev);
 return ret;
}
