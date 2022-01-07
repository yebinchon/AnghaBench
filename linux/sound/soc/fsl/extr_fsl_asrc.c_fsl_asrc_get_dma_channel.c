
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_asrc_pair {int index; struct fsl_asrc* asrc_priv; } ;
struct fsl_asrc {TYPE_1__* pdev; } ;
struct dma_chan {int dummy; } ;
typedef enum asrc_pair_index { ____Placeholder_asrc_pair_index } asrc_pair_index ;
struct TYPE_2__ {int dev; } ;


 int IN ;
 struct dma_chan* dma_request_slave_channel (int *,char*) ;
 int sprintf (char*,char*,char,int) ;

struct dma_chan *fsl_asrc_get_dma_channel(struct fsl_asrc_pair *pair, bool dir)
{
 struct fsl_asrc *asrc_priv = pair->asrc_priv;
 enum asrc_pair_index index = pair->index;
 char name[4];

 sprintf(name, "%cx%c", dir == IN ? 'r' : 't', index + 'a');

 return dma_request_slave_channel(&asrc_priv->pdev->dev, name);
}
