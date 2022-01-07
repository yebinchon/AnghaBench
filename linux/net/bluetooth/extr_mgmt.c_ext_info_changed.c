
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sock {int dummy; } ;
struct mgmt_ev_ext_info_changed {int eir_len; int eir; } ;
struct hci_dev {int dummy; } ;
typedef int buf ;


 int HCI_MGMT_EXT_INFO_EVENTS ;
 int MGMT_EV_EXT_INFO_CHANGED ;
 scalar_t__ append_eir_data_to_buf (struct hci_dev*,int ) ;
 int cpu_to_le16 (scalar_t__) ;
 int memset (char*,int ,int) ;
 int mgmt_limited_event (int ,struct hci_dev*,struct mgmt_ev_ext_info_changed*,scalar_t__,int ,struct sock*) ;

__attribute__((used)) static int ext_info_changed(struct hci_dev *hdev, struct sock *skip)
{
 char buf[512];
 struct mgmt_ev_ext_info_changed *ev = (void *)buf;
 u16 eir_len;

 memset(buf, 0, sizeof(buf));

 eir_len = append_eir_data_to_buf(hdev, ev->eir);
 ev->eir_len = cpu_to_le16(eir_len);

 return mgmt_limited_event(MGMT_EV_EXT_INFO_CHANGED, hdev, ev,
      sizeof(*ev) + eir_len,
      HCI_MGMT_EXT_INFO_EVENTS, skip);
}
