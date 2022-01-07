
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct net {int dummy; } ;
struct cflayer {scalar_t__ id; int (* ctrlcmd ) (struct cflayer*,int ,int ) ;} ;
struct cfcnfg {int ctrl; int mux; } ;


 int CAIF_CTRLCMD_DEINIT_RSP ;
 int caif_assert (int ) ;
 int cfctrl_cancel_req (int ,struct cflayer*) ;
 int cfctrl_linkdown_req (int ,scalar_t__,struct cflayer*) ;
 struct cflayer* cfmuxl_remove_uplayer (int ,scalar_t__) ;
 struct cfcnfg* get_cfcnfg (struct net*) ;
 int layer_set_up (struct cflayer*,int *) ;
 int pr_debug (char*) ;
 int stub1 (struct cflayer*,int ,int ) ;
 int synchronize_rcu () ;

int caif_disconnect_client(struct net *net, struct cflayer *adap_layer)
{
 u8 channel_id;
 struct cfcnfg *cfg = get_cfcnfg(net);

 caif_assert(adap_layer != ((void*)0));
 cfctrl_cancel_req(cfg->ctrl, adap_layer);
 channel_id = adap_layer->id;
 if (channel_id != 0) {
  struct cflayer *servl;
  servl = cfmuxl_remove_uplayer(cfg->mux, channel_id);
  cfctrl_linkdown_req(cfg->ctrl, channel_id, adap_layer);
  if (servl != ((void*)0))
   layer_set_up(servl, ((void*)0));
 } else
  pr_debug("nothing to disconnect\n");


 synchronize_rcu();
 if (adap_layer->ctrlcmd != ((void*)0))
  adap_layer->ctrlcmd(adap_layer, CAIF_CTRLCMD_DEINIT_RSP, 0);
 return 0;

}
