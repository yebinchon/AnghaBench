
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdac_hdmi_port {int id; TYPE_1__* pin; } ;
struct hdac_device {int dev; } ;
struct TYPE_2__ {int nid; int mst_capable; } ;


 int AC_VERB_SET_DEVICE_SEL ;
 int EIO ;
 int dev_dbg (int *,char*,int) ;
 int hdac_hdmi_get_port_len (struct hdac_device*,int ) ;
 int hdac_hdmi_port_select_get (struct hdac_device*,struct hdac_hdmi_port*) ;
 int snd_hdac_codec_write (struct hdac_device*,int ,int ,int ,int) ;

__attribute__((used)) static int hdac_hdmi_port_select_set(struct hdac_device *hdev,
     struct hdac_hdmi_port *port)
{
 int num_ports;

 if (!port->pin->mst_capable)
  return 0;


 num_ports = hdac_hdmi_get_port_len(hdev, port->pin->nid);
 if (num_ports < 0)
  return -EIO;




 if (num_ports + 1 < port->id)
  return 0;

 snd_hdac_codec_write(hdev, port->pin->nid, 0,
   AC_VERB_SET_DEVICE_SEL, port->id);

 if (port->id != hdac_hdmi_port_select_get(hdev, port))
  return -EIO;

 dev_dbg(&hdev->dev, "Selected the port=%d\n", port->id);

 return 0;
}
