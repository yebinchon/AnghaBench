
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct packet_sock {TYPE_1__* fanout; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ id; } ;


 int PACKET_DIAG_FANOUT ;
 int fanout_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nla_put_u32 (struct sk_buff*,int ,int) ;

__attribute__((used)) static int pdiag_put_fanout(struct packet_sock *po, struct sk_buff *nlskb)
{
 int ret = 0;

 mutex_lock(&fanout_mutex);
 if (po->fanout) {
  u32 val;

  val = (u32)po->fanout->id | ((u32)po->fanout->type << 16);
  ret = nla_put_u32(nlskb, PACKET_DIAG_FANOUT, val);
 }
 mutex_unlock(&fanout_mutex);

 return ret;
}
