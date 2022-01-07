
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mgmt_ev_discovering {int discovering; int type; } ;
struct TYPE_2__ {int type; } ;
struct hci_dev {TYPE_1__ discovery; int name; } ;
typedef int ev ;


 int BT_DBG (char*,int ,int ) ;
 int MGMT_EV_DISCOVERING ;
 int memset (struct mgmt_ev_discovering*,int ,int) ;
 int mgmt_event (int ,struct hci_dev*,struct mgmt_ev_discovering*,int,int *) ;

void mgmt_discovering(struct hci_dev *hdev, u8 discovering)
{
 struct mgmt_ev_discovering ev;

 BT_DBG("%s discovering %u", hdev->name, discovering);

 memset(&ev, 0, sizeof(ev));
 ev.type = hdev->discovery.type;
 ev.discovering = discovering;

 mgmt_event(MGMT_EV_DISCOVERING, hdev, &ev, sizeof(ev), ((void*)0));
}
