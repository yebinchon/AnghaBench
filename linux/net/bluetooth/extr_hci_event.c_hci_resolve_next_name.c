
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inquiry_entry {int name_state; } ;
struct discovery_state {int resolve; } ;
struct hci_dev {struct discovery_state discovery; } ;


 int BDADDR_ANY ;
 int NAME_NEEDED ;
 int NAME_PENDING ;
 struct inquiry_entry* hci_inquiry_cache_lookup_resolve (struct hci_dev*,int ,int ) ;
 scalar_t__ hci_resolve_name (struct hci_dev*,struct inquiry_entry*) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static bool hci_resolve_next_name(struct hci_dev *hdev)
{
 struct discovery_state *discov = &hdev->discovery;
 struct inquiry_entry *e;

 if (list_empty(&discov->resolve))
  return 0;

 e = hci_inquiry_cache_lookup_resolve(hdev, BDADDR_ANY, NAME_NEEDED);
 if (!e)
  return 0;

 if (hci_resolve_name(hdev, e) == 0) {
  e->name_state = NAME_PENDING;
  return 1;
 }

 return 0;
}
