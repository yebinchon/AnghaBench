
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct smp_ltk {void* type; void* enc_size; int rand; int ediv; void* authenticated; int val; void* bdaddr_type; int bdaddr; int list; } ;
struct hci_dev {int long_term_keys; } ;
typedef int bdaddr_t ;
typedef int __le64 ;
typedef int __le16 ;


 int GFP_KERNEL ;
 int bacpy (int *,int *) ;
 struct smp_ltk* hci_find_ltk (struct hci_dev*,int *,void*,void*) ;
 struct smp_ltk* kzalloc (int,int ) ;
 int list_add_rcu (int *,int *) ;
 void* ltk_role (void*) ;
 int memcpy (int ,void**,int) ;

struct smp_ltk *hci_add_ltk(struct hci_dev *hdev, bdaddr_t *bdaddr,
       u8 addr_type, u8 type, u8 authenticated,
       u8 tk[16], u8 enc_size, __le16 ediv, __le64 rand)
{
 struct smp_ltk *key, *old_key;
 u8 role = ltk_role(type);

 old_key = hci_find_ltk(hdev, bdaddr, addr_type, role);
 if (old_key)
  key = old_key;
 else {
  key = kzalloc(sizeof(*key), GFP_KERNEL);
  if (!key)
   return ((void*)0);
  list_add_rcu(&key->list, &hdev->long_term_keys);
 }

 bacpy(&key->bdaddr, bdaddr);
 key->bdaddr_type = addr_type;
 memcpy(key->val, tk, sizeof(key->val));
 key->authenticated = authenticated;
 key->ediv = ediv;
 key->rand = rand;
 key->enc_size = enc_size;
 key->type = type;

 return key;
}
