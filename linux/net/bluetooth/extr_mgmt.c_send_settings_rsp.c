
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct hci_dev {int id; } ;
typedef int settings ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;
 int get_current_settings (struct hci_dev*) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,int *,int) ;

__attribute__((used)) static int send_settings_rsp(struct sock *sk, u16 opcode, struct hci_dev *hdev)
{
 __le32 settings = cpu_to_le32(get_current_settings(hdev));

 return mgmt_cmd_complete(sk, hdev->id, opcode, 0, &settings,
     sizeof(settings));
}
