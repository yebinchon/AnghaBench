
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct batadv_bla_backbone_gw {int request_sent; TYPE_2__* bat_priv; int vid; int orig; } ;
struct TYPE_4__ {int num_requests; } ;
struct TYPE_5__ {TYPE_1__ bla; } ;


 int BATADV_CLAIM_TYPE_REQUEST ;
 int BATADV_DBG_BLA ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int batadv_bla_del_backbone_claims (struct batadv_bla_backbone_gw*) ;
 int batadv_bla_send_claim (TYPE_2__*,int ,int ,int ) ;
 int batadv_dbg (int ,TYPE_2__*,char*,int ) ;

__attribute__((used)) static void batadv_bla_send_request(struct batadv_bla_backbone_gw *backbone_gw)
{

 batadv_bla_del_backbone_claims(backbone_gw);

 batadv_dbg(BATADV_DBG_BLA, backbone_gw->bat_priv,
     "Sending REQUEST to %pM\n", backbone_gw->orig);


 batadv_bla_send_claim(backbone_gw->bat_priv, backbone_gw->orig,
         backbone_gw->vid, BATADV_CLAIM_TYPE_REQUEST);


 if (!atomic_read(&backbone_gw->request_sent)) {
  atomic_inc(&backbone_gw->bat_priv->bla.num_requests);
  atomic_set(&backbone_gw->request_sent, 1);
 }
}
