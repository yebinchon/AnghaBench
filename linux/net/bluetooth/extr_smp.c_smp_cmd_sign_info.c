
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smp_csrk {int val; int type; } ;
struct smp_cmd_sign_info {int csrk; } ;
struct smp_chan {struct smp_csrk* csrk; int remote_key_dist; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_conn {TYPE_1__* hcon; struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct TYPE_2__ {scalar_t__ sec_level; } ;


 int BT_DBG (char*,struct l2cap_conn*) ;
 scalar_t__ BT_SECURITY_MEDIUM ;
 int GFP_KERNEL ;
 int MGMT_CSRK_REMOTE_AUTHENTICATED ;
 int MGMT_CSRK_REMOTE_UNAUTHENTICATED ;
 int SMP_DIST_SIGN ;
 int SMP_INVALID_PARAMS ;
 struct smp_csrk* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int smp_distribute_keys (struct smp_chan*) ;

__attribute__((used)) static int smp_cmd_sign_info(struct l2cap_conn *conn, struct sk_buff *skb)
{
 struct smp_cmd_sign_info *rp = (void *) skb->data;
 struct l2cap_chan *chan = conn->smp;
 struct smp_chan *smp = chan->data;
 struct smp_csrk *csrk;

 BT_DBG("conn %p", conn);

 if (skb->len < sizeof(*rp))
  return SMP_INVALID_PARAMS;


 smp->remote_key_dist &= ~SMP_DIST_SIGN;

 skb_pull(skb, sizeof(*rp));

 csrk = kzalloc(sizeof(*csrk), GFP_KERNEL);
 if (csrk) {
  if (conn->hcon->sec_level > BT_SECURITY_MEDIUM)
   csrk->type = MGMT_CSRK_REMOTE_AUTHENTICATED;
  else
   csrk->type = MGMT_CSRK_REMOTE_UNAUTHENTICATED;
  memcpy(csrk->val, rp->csrk, sizeof(csrk->val));
 }
 smp->csrk = csrk;
 smp_distribute_keys(smp);

 return 0;
}
