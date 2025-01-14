
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int channels_max; } ;
struct hdac_hdmi_priv {TYPE_1__ chmap; } ;
struct TYPE_4__ {int channels_min; unsigned int channels_max; int maxbps; int formats; int rates; } ;
struct hdac_hdmi_cvt {int nid; TYPE_2__ params; } ;
struct hdac_device {int dev; } ;


 int dev_err (int *,char*,int ,int) ;
 unsigned int get_wcaps (struct hdac_device*,int ) ;
 unsigned int get_wcaps_channels (unsigned int) ;
 struct hdac_hdmi_priv* hdev_to_hdmi_priv (struct hdac_device*) ;
 int snd_hdac_query_supported_pcm (struct hdac_device*,int ,int *,int *,int *) ;

__attribute__((used)) static int
hdac_hdmi_query_cvt_params(struct hdac_device *hdev, struct hdac_hdmi_cvt *cvt)
{
 unsigned int chans;
 struct hdac_hdmi_priv *hdmi = hdev_to_hdmi_priv(hdev);
 int err;

 chans = get_wcaps(hdev, cvt->nid);
 chans = get_wcaps_channels(chans);

 cvt->params.channels_min = 2;

 cvt->params.channels_max = chans;
 if (chans > hdmi->chmap.channels_max)
  hdmi->chmap.channels_max = chans;

 err = snd_hdac_query_supported_pcm(hdev, cvt->nid,
   &cvt->params.rates,
   &cvt->params.formats,
   &cvt->params.maxbps);
 if (err < 0)
  dev_err(&hdev->dev,
   "Failed to query pcm params for nid %d: %d\n",
   cvt->nid, err);

 return err;
}
