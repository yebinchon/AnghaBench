
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct smp_cmd_dhkey_check {int e; } ;
struct smp_chan {scalar_t__ method; TYPE_1__* conn; int rrnd; int prnd; int mackey; int tfm_cmac; int * rr; int * prsp; int * preq; } ;
struct hci_conn {int passkey_notify; scalar_t__ out; int resp_addr_type; int init_addr_type; int resp_addr; int init_addr; } ;
typedef int r ;
typedef int check ;
struct TYPE_2__ {struct hci_conn* hcon; } ;


 scalar_t__ DSP_PASSKEY ;
 scalar_t__ REQ_OOB ;
 scalar_t__ REQ_PASSKEY ;
 int SMP_CMD_DHKEY_CHECK ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int put_unaligned_le32 (int ,int *) ;
 int smp_f6 (int ,int ,int ,int ,int *,int *,int *,int *,int ) ;
 int smp_send_cmd (TYPE_1__*,int ,int,struct smp_cmd_dhkey_check*) ;

__attribute__((used)) static void sc_dhkey_check(struct smp_chan *smp)
{
 struct hci_conn *hcon = smp->conn->hcon;
 struct smp_cmd_dhkey_check check;
 u8 a[7], b[7], *local_addr, *remote_addr;
 u8 io_cap[3], r[16];

 memcpy(a, &hcon->init_addr, 6);
 memcpy(b, &hcon->resp_addr, 6);
 a[6] = hcon->init_addr_type;
 b[6] = hcon->resp_addr_type;

 if (hcon->out) {
  local_addr = a;
  remote_addr = b;
  memcpy(io_cap, &smp->preq[1], 3);
 } else {
  local_addr = b;
  remote_addr = a;
  memcpy(io_cap, &smp->prsp[1], 3);
 }

 memset(r, 0, sizeof(r));

 if (smp->method == REQ_PASSKEY || smp->method == DSP_PASSKEY)
  put_unaligned_le32(hcon->passkey_notify, r);

 if (smp->method == REQ_OOB)
  memcpy(r, smp->rr, 16);

 smp_f6(smp->tfm_cmac, smp->mackey, smp->prnd, smp->rrnd, r, io_cap,
        local_addr, remote_addr, check.e);

 smp_send_cmd(smp->conn, SMP_CMD_DHKEY_CHECK, sizeof(check), &check);
}
