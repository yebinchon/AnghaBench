
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_codec_priv {unsigned int jack_status; scalar_t__ jack; } ;


 int SND_JACK_LINEOUT ;
 int snd_soc_jack_report (scalar_t__,unsigned int,int ) ;

__attribute__((used)) static void hdmi_codec_jack_report(struct hdmi_codec_priv *hcp,
       unsigned int jack_status)
{
 if (hcp->jack && jack_status != hcp->jack_status) {
  snd_soc_jack_report(hcp->jack, jack_status, SND_JACK_LINEOUT);
  hcp->jack_status = jack_status;
 }
}
