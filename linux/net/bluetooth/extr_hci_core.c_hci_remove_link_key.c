
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_key {int list; } ;
struct hci_dev {int name; } ;
typedef int bdaddr_t ;


 int BT_DBG (char*,int ,int *) ;
 int ENOENT ;
 struct link_key* hci_find_link_key (struct hci_dev*,int *) ;
 int kfree_rcu (struct link_key*,int ) ;
 int list_del_rcu (int *) ;
 int rcu ;

int hci_remove_link_key(struct hci_dev *hdev, bdaddr_t *bdaddr)
{
 struct link_key *key;

 key = hci_find_link_key(hdev, bdaddr);
 if (!key)
  return -ENOENT;

 BT_DBG("%s removing %pMR", hdev->name, bdaddr);

 list_del_rcu(&key->list);
 kfree_rcu(key, rcu);

 return 0;
}
