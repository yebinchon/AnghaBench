
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_hdmi_port {scalar_t__ num_mux_nids; int id; int mux_nids; } ;
struct hdac_hdmi_pin {int nid; } ;
struct hdac_device {int dev; } ;


 int AC_WCAP_CONN_LIST ;
 int EINVAL ;
 int EIO ;
 int HDA_MAX_CONNECTIONS ;
 int dev_dbg (int *,char*,scalar_t__,int ,int) ;
 int dev_warn (int *,char*,int ,int) ;
 int get_wcaps (struct hdac_device*,int ) ;
 scalar_t__ hdac_hdmi_port_select_set (struct hdac_device*,struct hdac_hdmi_port*) ;
 scalar_t__ snd_hdac_get_connections (struct hdac_device*,int ,int ,int ) ;

__attribute__((used)) static int hdac_hdmi_query_port_connlist(struct hdac_device *hdev,
     struct hdac_hdmi_pin *pin,
     struct hdac_hdmi_port *port)
{
 if (!(get_wcaps(hdev, pin->nid) & AC_WCAP_CONN_LIST)) {
  dev_warn(&hdev->dev,
   "HDMI: pin %d wcaps %#x does not support connection list\n",
   pin->nid, get_wcaps(hdev, pin->nid));
  return -EINVAL;
 }

 if (hdac_hdmi_port_select_set(hdev, port) < 0)
  return -EIO;

 port->num_mux_nids = snd_hdac_get_connections(hdev, pin->nid,
   port->mux_nids, HDA_MAX_CONNECTIONS);
 if (port->num_mux_nids == 0)
  dev_warn(&hdev->dev,
   "No connections found for pin:port %d:%d\n",
      pin->nid, port->id);

 dev_dbg(&hdev->dev, "num_mux_nids %d for pin:port %d:%d\n",
   port->num_mux_nids, pin->nid, port->id);

 return port->num_mux_nids;
}
