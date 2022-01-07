
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmp_dma_data {TYPE_1__* dma_res; int ssp_id; } ;
struct dma_chan {scalar_t__ chan_id; TYPE_2__* device; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ start; int name; } ;


 int GFP_KERNEL ;
 int dev_name (int ) ;
 char* kasprintf (int ,char*,int ,int ) ;
 int kfree (char*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bool filter(struct dma_chan *chan, void *param)
{
 struct mmp_dma_data *dma_data = param;
 bool found = 0;
 char *devname;

 devname = kasprintf(GFP_KERNEL, "%s.%d", dma_data->dma_res->name,
  dma_data->ssp_id);
 if ((strcmp(dev_name(chan->device->dev), devname) == 0) &&
  (chan->chan_id == dma_data->dma_res->start)) {
  found = 1;
 }

 kfree(devname);
 return found;
}
