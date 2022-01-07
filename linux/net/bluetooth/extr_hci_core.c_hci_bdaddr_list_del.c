
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct list_head {int dummy; } ;
struct bdaddr_list {int list; } ;
typedef int bdaddr_t ;


 int BDADDR_ANY ;
 int ENOENT ;
 int bacmp (int *,int ) ;
 int hci_bdaddr_list_clear (struct list_head*) ;
 struct bdaddr_list* hci_bdaddr_list_lookup (struct list_head*,int *,int ) ;
 int kfree (struct bdaddr_list*) ;
 int list_del (int *) ;

int hci_bdaddr_list_del(struct list_head *list, bdaddr_t *bdaddr, u8 type)
{
 struct bdaddr_list *entry;

 if (!bacmp(bdaddr, BDADDR_ANY)) {
  hci_bdaddr_list_clear(list);
  return 0;
 }

 entry = hci_bdaddr_list_lookup(list, bdaddr, type);
 if (!entry)
  return -ENOENT;

 list_del(&entry->list);
 kfree(entry);

 return 0;
}
