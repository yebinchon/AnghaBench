
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct list_head {int dummy; } ;
struct bdaddr_list {int list; int bdaddr_type; int bdaddr; } ;
typedef int bdaddr_t ;


 int BDADDR_ANY ;
 int EBADF ;
 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bacmp (int *,int ) ;
 int bacpy (int *,int *) ;
 scalar_t__ hci_bdaddr_list_lookup (struct list_head*,int *,int ) ;
 struct bdaddr_list* kzalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;

int hci_bdaddr_list_add(struct list_head *list, bdaddr_t *bdaddr, u8 type)
{
 struct bdaddr_list *entry;

 if (!bacmp(bdaddr, BDADDR_ANY))
  return -EBADF;

 if (hci_bdaddr_list_lookup(list, bdaddr, type))
  return -EEXIST;

 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;

 bacpy(&entry->bdaddr, bdaddr);
 entry->bdaddr_type = type;

 list_add(&entry->list, list);

 return 0;
}
