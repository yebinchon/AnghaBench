
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct list_head {int dummy; } ;
struct bdaddr_list_with_irk {int list; int local_irk; int peer_irk; int bdaddr_type; int bdaddr; } ;
typedef int bdaddr_t ;


 int BDADDR_ANY ;
 int EBADF ;
 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bacmp (int *,int ) ;
 int bacpy (int *,int *) ;
 scalar_t__ hci_bdaddr_list_lookup (struct list_head*,int *,int ) ;
 struct bdaddr_list_with_irk* kzalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;
 int memcpy (int ,int *,int) ;

int hci_bdaddr_list_add_with_irk(struct list_head *list, bdaddr_t *bdaddr,
     u8 type, u8 *peer_irk, u8 *local_irk)
{
 struct bdaddr_list_with_irk *entry;

 if (!bacmp(bdaddr, BDADDR_ANY))
  return -EBADF;

 if (hci_bdaddr_list_lookup(list, bdaddr, type))
  return -EEXIST;

 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;

 bacpy(&entry->bdaddr, bdaddr);
 entry->bdaddr_type = type;

 if (peer_irk)
  memcpy(entry->peer_irk, peer_irk, 16);

 if (local_irk)
  memcpy(entry->local_irk, local_irk, 16);

 list_add(&entry->list, list);

 return 0;
}
