
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smp_cmd_pairing_confirm {int confirm_val; } ;
struct smp_chan {int passkey_round; int prnd; int remote_pk; int local_pk; int tfm_cmac; struct l2cap_conn* conn; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct hci_conn {int passkey_notify; } ;
typedef int cfm ;


 int SMP_CMD_PAIRING_CONFIRM ;
 int SMP_UNSPECIFIED ;
 int get_random_bytes (int ,int) ;
 scalar_t__ smp_f4 (int ,int ,int ,int ,int,int ) ;
 int smp_send_cmd (struct l2cap_conn*,int ,int,struct smp_cmd_pairing_confirm*) ;

__attribute__((used)) static u8 sc_passkey_send_confirm(struct smp_chan *smp)
{
 struct l2cap_conn *conn = smp->conn;
 struct hci_conn *hcon = conn->hcon;
 struct smp_cmd_pairing_confirm cfm;
 u8 r;

 r = ((hcon->passkey_notify >> smp->passkey_round) & 0x01);
 r |= 0x80;

 get_random_bytes(smp->prnd, sizeof(smp->prnd));

 if (smp_f4(smp->tfm_cmac, smp->local_pk, smp->remote_pk, smp->prnd, r,
     cfm.confirm_val))
  return SMP_UNSPECIFIED;

 smp_send_cmd(conn, SMP_CMD_PAIRING_CONFIRM, sizeof(cfm), &cfm);

 return 0;
}
