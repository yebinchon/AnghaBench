
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_hdmi_port {int dapm; int jack_pin; scalar_t__ is_connect; } ;


 int snd_soc_dapm_disable_pin (int ,int ) ;
 int snd_soc_dapm_enable_pin (int ,int ) ;
 int snd_soc_dapm_sync (int ) ;

__attribute__((used)) static void hdac_hdmi_port_dapm_update(struct hdac_hdmi_port *port)
{
 if (port->is_connect)
  snd_soc_dapm_enable_pin(port->dapm, port->jack_pin);
 else
  snd_soc_dapm_disable_pin(port->dapm, port->jack_pin);
 snd_soc_dapm_sync(port->dapm);
}
