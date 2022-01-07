
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct mgmt_ev_phy_configuration_changed {int selected_phys; } ;
struct hci_dev {int dummy; } ;
typedef int ev ;


 int MGMT_EV_PHY_CONFIGURATION_CHANGED ;
 int cpu_to_le32 (int ) ;
 int get_selected_phys (struct hci_dev*) ;
 int memset (struct mgmt_ev_phy_configuration_changed*,int ,int) ;
 int mgmt_event (int ,struct hci_dev*,struct mgmt_ev_phy_configuration_changed*,int,struct sock*) ;

int mgmt_phy_configuration_changed(struct hci_dev *hdev, struct sock *skip)
{
 struct mgmt_ev_phy_configuration_changed ev;

 memset(&ev, 0, sizeof(ev));

 ev.selected_phys = cpu_to_le32(get_selected_phys(hdev));

 return mgmt_event(MGMT_EV_PHY_CONFIGURATION_CHANGED, hdev, &ev,
     sizeof(ev), skip);
}
