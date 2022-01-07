
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct hci_dev {int dummy; } ;
typedef int ev ;
typedef int __le32 ;


 int HCI_MGMT_SETTING_EVENTS ;
 int MGMT_EV_NEW_SETTINGS ;
 int cpu_to_le32 (int ) ;
 int get_current_settings (struct hci_dev*) ;
 int mgmt_limited_event (int ,struct hci_dev*,int *,int,int ,struct sock*) ;

__attribute__((used)) static int new_settings(struct hci_dev *hdev, struct sock *skip)
{
 __le32 ev = cpu_to_le32(get_current_settings(hdev));

 return mgmt_limited_event(MGMT_EV_NEW_SETTINGS, hdev, &ev,
      sizeof(ev), HCI_MGMT_SETTING_EVENTS, skip);
}
