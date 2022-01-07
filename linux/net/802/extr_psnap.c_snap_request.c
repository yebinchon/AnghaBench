
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct datalink_proto {int type; } ;
struct TYPE_4__ {int lsap; } ;
struct TYPE_5__ {TYPE_1__ laddr; } ;


 int llc_build_and_send_ui_pkt (TYPE_2__*,struct sk_buff*,int *,int ) ;
 int memcpy (int ,int ,int) ;
 int skb_push (struct sk_buff*,int) ;
 TYPE_2__* snap_sap ;

__attribute__((used)) static int snap_request(struct datalink_proto *dl,
   struct sk_buff *skb, u8 *dest)
{
 memcpy(skb_push(skb, 5), dl->type, 5);
 llc_build_and_send_ui_pkt(snap_sap, skb, dest, snap_sap->laddr.lsap);
 return 0;
}
