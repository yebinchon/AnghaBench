
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {int dummy; } ;
typedef int __u8 ;
typedef int __le16 ;


 int HCI_FLT_CLEAR_ALL ;
 int HCI_OP_READ_BUFFER_SIZE ;
 int HCI_OP_READ_CLASS_OF_DEV ;
 int HCI_OP_READ_CURRENT_IAC_LAP ;
 int HCI_OP_READ_LOCAL_NAME ;
 int HCI_OP_READ_NUM_SUPPORTED_IAC ;
 int HCI_OP_READ_VOICE_SETTING ;
 int HCI_OP_SET_EVENT_FLT ;
 int HCI_OP_WRITE_CA_TIMEOUT ;
 int cpu_to_le16 (int) ;
 int hci_req_add (struct hci_request*,int ,int,int *) ;

__attribute__((used)) static void bredr_setup(struct hci_request *req)
{
 __le16 param;
 __u8 flt_type;


 hci_req_add(req, HCI_OP_READ_BUFFER_SIZE, 0, ((void*)0));


 hci_req_add(req, HCI_OP_READ_CLASS_OF_DEV, 0, ((void*)0));


 hci_req_add(req, HCI_OP_READ_LOCAL_NAME, 0, ((void*)0));


 hci_req_add(req, HCI_OP_READ_VOICE_SETTING, 0, ((void*)0));


 hci_req_add(req, HCI_OP_READ_NUM_SUPPORTED_IAC, 0, ((void*)0));


 hci_req_add(req, HCI_OP_READ_CURRENT_IAC_LAP, 0, ((void*)0));


 flt_type = HCI_FLT_CLEAR_ALL;
 hci_req_add(req, HCI_OP_SET_EVENT_FLT, 1, &flt_type);


 param = cpu_to_le16(0x7d00);
 hci_req_add(req, HCI_OP_WRITE_CA_TIMEOUT, 2, &param);
}
