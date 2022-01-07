
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smp_cmd_ident_info {int irk; } ;
struct smp_chan {int irk; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_conn {struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;


 int BT_DBG (char*) ;
 int SMP_ALLOW_CMD (struct smp_chan*,int ) ;
 int SMP_CMD_IDENT_ADDR_INFO ;
 int SMP_INVALID_PARAMS ;
 int memcpy (int ,int ,int) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int smp_cmd_ident_info(struct l2cap_conn *conn, struct sk_buff *skb)
{
 struct smp_cmd_ident_info *info = (void *) skb->data;
 struct l2cap_chan *chan = conn->smp;
 struct smp_chan *smp = chan->data;

 BT_DBG("");

 if (skb->len < sizeof(*info))
  return SMP_INVALID_PARAMS;

 SMP_ALLOW_CMD(smp, SMP_CMD_IDENT_ADDR_INFO);

 skb_pull(skb, sizeof(*info));

 memcpy(smp->irk, info->irk, 16);

 return 0;
}
