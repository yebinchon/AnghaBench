
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_hdmi_port {int id; int dapm_work; struct hdac_hdmi_pin* pin; } ;
struct hdac_hdmi_pin {int num_ports; struct hdac_hdmi_port* ports; } ;
struct hdac_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HDA_MAX_PORTS ;
 int INIT_WORK (int *,int ) ;
 struct hdac_hdmi_port* devm_kcalloc (int *,int,int,int ) ;
 int hdac_hdmi_jack_dapm_work ;

__attribute__((used)) static int hdac_hdmi_add_ports(struct hdac_device *hdev,
          struct hdac_hdmi_pin *pin)
{
 struct hdac_hdmi_port *ports;
 int max_ports = HDA_MAX_PORTS;
 int i;







 ports = devm_kcalloc(&hdev->dev, max_ports, sizeof(*ports), GFP_KERNEL);
 if (!ports)
  return -ENOMEM;

 for (i = 0; i < max_ports; i++) {
  ports[i].id = i;
  ports[i].pin = pin;
  INIT_WORK(&ports[i].dapm_work, hdac_hdmi_jack_dapm_work);
 }
 pin->ports = ports;
 pin->num_ports = max_ports;
 return 0;
}
