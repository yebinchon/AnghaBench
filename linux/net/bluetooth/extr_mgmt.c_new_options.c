
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct hci_dev {int dummy; } ;
typedef int options ;
typedef int __le32 ;


 int HCI_MGMT_OPTION_EVENTS ;
 int MGMT_EV_NEW_CONFIG_OPTIONS ;
 int get_missing_options (struct hci_dev*) ;
 int mgmt_limited_event (int ,struct hci_dev*,int *,int,int ,struct sock*) ;

__attribute__((used)) static int new_options(struct hci_dev *hdev, struct sock *skip)
{
 __le32 options = get_missing_options(hdev);

 return mgmt_limited_event(MGMT_EV_NEW_CONFIG_OPTIONS, hdev, &options,
      sizeof(options), HCI_MGMT_OPTION_EVENTS, skip);
}
