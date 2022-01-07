
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cflayer {int (* ctrlcmd ) (struct cflayer*,int ,int ) ;} ;


 int CAIF_CTRLCMD_INIT_FAIL_RSP ;
 int stub1 (struct cflayer*,int ,int ) ;

__attribute__((used)) static void cfcnfg_reject_rsp(struct cflayer *layer, u8 channel_id,
         struct cflayer *adapt_layer)
{
 if (adapt_layer != ((void*)0) && adapt_layer->ctrlcmd != ((void*)0))
  adapt_layer->ctrlcmd(adapt_layer,
         CAIF_CTRLCMD_INIT_FAIL_RSP, 0);
}
