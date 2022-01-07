
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_codec_priv {int dummy; } ;
struct device {int dummy; } ;


 int SND_JACK_LINEOUT ;
 struct hdmi_codec_priv* dev_get_drvdata (struct device*) ;
 int hdmi_codec_jack_report (struct hdmi_codec_priv*,int ) ;

__attribute__((used)) static void plugged_cb(struct device *dev, bool plugged)
{
 struct hdmi_codec_priv *hcp = dev_get_drvdata(dev);

 if (plugged)
  hdmi_codec_jack_report(hcp, SND_JACK_LINEOUT);
 else
  hdmi_codec_jack_report(hcp, 0);
}
