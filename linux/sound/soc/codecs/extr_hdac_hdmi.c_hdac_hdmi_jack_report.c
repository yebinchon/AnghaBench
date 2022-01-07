
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdac_hdmi_port {int is_connect; TYPE_1__* pin; } ;
struct hdac_hdmi_pcm {int jack_event; int jack; int pcm_id; } ;
struct hdac_device {int dev; } ;
struct TYPE_2__ {struct hdac_device* hdev; } ;


 int SND_JACK_AVOUT ;
 int dev_dbg (int *,char*,int ) ;
 int snd_soc_jack_report (int ,int ,int ) ;

__attribute__((used)) static void hdac_hdmi_jack_report(struct hdac_hdmi_pcm *pcm,
  struct hdac_hdmi_port *port, bool is_connect)
{
 struct hdac_device *hdev = port->pin->hdev;

 port->is_connect = is_connect;
 if (is_connect) {





  if (pcm->jack_event == 0) {
   dev_dbg(&hdev->dev,
     "jack report for pcm=%d\n",
     pcm->pcm_id);
   snd_soc_jack_report(pcm->jack, SND_JACK_AVOUT,
      SND_JACK_AVOUT);
  }
  pcm->jack_event++;
 } else {





  if (pcm->jack_event == 1)
   snd_soc_jack_report(pcm->jack, 0, SND_JACK_AVOUT);
  if (pcm->jack_event > 0)
   pcm->jack_event--;
 }
}
