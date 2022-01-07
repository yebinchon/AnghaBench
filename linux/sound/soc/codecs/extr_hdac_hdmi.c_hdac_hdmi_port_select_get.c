
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdac_hdmi_port {TYPE_1__* pin; } ;
struct hdac_device {int dummy; } ;
struct TYPE_2__ {int nid; } ;


 int AC_VERB_GET_DEVICE_SEL ;
 int snd_hdac_codec_read (struct hdac_device*,int ,int ,int ,int ) ;

__attribute__((used)) static int hdac_hdmi_port_select_get(struct hdac_device *hdev,
     struct hdac_hdmi_port *port)
{
 return snd_hdac_codec_read(hdev, port->pin->nid,
    0, AC_VERB_GET_DEVICE_SEL, 0);
}
