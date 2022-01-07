
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_hdmi_port {int dummy; } ;
struct hdac_hdmi_pcm {int dummy; } ;


 int hdac_hdmi_jack_report (struct hdac_hdmi_pcm*,struct hdac_hdmi_port*,int) ;
 int hdac_hdmi_port_dapm_update (struct hdac_hdmi_port*) ;

__attribute__((used)) static void hdac_hdmi_jack_report_sync(struct hdac_hdmi_pcm *pcm,
  struct hdac_hdmi_port *port, bool is_connect)
{
 hdac_hdmi_jack_report(pcm, port, is_connect);
 hdac_hdmi_port_dapm_update(port);
}
