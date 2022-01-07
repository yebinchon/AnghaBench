
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct smp_cmd_pairing_confirm {int confirm_val; } ;
struct smp_chan {struct l2cap_conn* conn; int flags; int prsp; int preq; int prnd; int tk; } ;
struct l2cap_conn {TYPE_1__* hcon; } ;
typedef int cp ;
struct TYPE_2__ {scalar_t__ out; int resp_addr; int resp_addr_type; int init_addr; int init_addr_type; } ;


 int BT_DBG (char*,struct l2cap_conn*) ;
 int SMP_ALLOW_CMD (struct smp_chan*,int ) ;
 int SMP_CMD_PAIRING_CONFIRM ;
 int SMP_CMD_PAIRING_RANDOM ;
 int SMP_FLAG_CFM_PENDING ;
 int SMP_UNSPECIFIED ;
 int clear_bit (int ,int *) ;
 int smp_c1 (int ,int ,int ,int ,int ,int *,int ,int *,int ) ;
 int smp_send_cmd (struct l2cap_conn*,int ,int,struct smp_cmd_pairing_confirm*) ;

__attribute__((used)) static u8 smp_confirm(struct smp_chan *smp)
{
 struct l2cap_conn *conn = smp->conn;
 struct smp_cmd_pairing_confirm cp;
 int ret;

 BT_DBG("conn %p", conn);

 ret = smp_c1(smp->tk, smp->prnd, smp->preq, smp->prsp,
       conn->hcon->init_addr_type, &conn->hcon->init_addr,
       conn->hcon->resp_addr_type, &conn->hcon->resp_addr,
       cp.confirm_val);
 if (ret)
  return SMP_UNSPECIFIED;

 clear_bit(SMP_FLAG_CFM_PENDING, &smp->flags);

 smp_send_cmd(smp->conn, SMP_CMD_PAIRING_CONFIRM, sizeof(cp), &cp);

 if (conn->hcon->out)
  SMP_ALLOW_CMD(smp, SMP_CMD_PAIRING_CONFIRM);
 else
  SMP_ALLOW_CMD(smp, SMP_CMD_PAIRING_RANDOM);

 return 0;
}
