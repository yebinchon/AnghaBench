
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usbmix_ctl_map {int id; int map; } ;
struct usb_mixer_interface {TYPE_1__* chip; } ;
struct usb_interface_descriptor {int bNumEndpoints; } ;
struct usb_interface_assoc_descriptor {int bInterfaceCount; int bFirstInterface; } ;
struct usb_interface {int num_altsetting; struct usb_host_interface* altsetting; struct usb_interface_assoc_descriptor* intf_assoc; } ;
struct usb_host_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct usb_audio_term {void* type; int id; } ;
struct uac3_badd_profile {int subclass; int st_chmask; scalar_t__ name; } ;
typedef int oterm ;
typedef int iterm ;
struct TYPE_5__ {char bEndpointAddress; int wMaxPacketSize; } ;
struct TYPE_4__ {int badd_profile; struct usb_device* dev; } ;


 int EINVAL ;
 int UAC3_BADD_FU_ID2 ;
 int UAC3_BADD_FU_ID5 ;
 int UAC3_BADD_FU_ID7 ;
 int UAC3_BADD_IT_ID4 ;
 int UAC3_BADD_OT_ID3 ;
 int UAC3_FUNCTION_SUBCLASS_HEADSET_ADAPTER ;
 void* UAC_BIDIR_TERMINAL_HEADSET ;
 int UAC_FU_MUTE ;
 int UAC_FU_VOLUME ;
 char USB_DIR_IN ;
 int build_connector_control (struct usb_mixer_interface*,struct usb_audio_term*,int) ;
 int build_feature_ctl_badd (struct usb_mixer_interface*,int,int ,int ,int ) ;
 TYPE_3__* get_endpoint (struct usb_host_interface*,int ) ;
 struct usb_interface_descriptor* get_iface_desc (struct usb_host_interface*) ;
 unsigned int le16_to_cpu (int ) ;
 int memset (struct usb_audio_term*,int ,int) ;
 int uac3_badd_func_has_valid_channels (struct usb_mixer_interface*,struct uac3_badd_profile*,int,int) ;
 struct uac3_badd_profile* uac3_badd_profiles ;
 struct usbmix_ctl_map* uac3_badd_usbmix_ctl_maps ;
 int usb_audio_dbg (TYPE_1__*,char*,int,int,int) ;
 int usb_audio_err (TYPE_1__*,char*,unsigned int) ;
 struct usb_interface* usb_ifnum_to_if (struct usb_device*,int) ;

__attribute__((used)) static int snd_usb_mixer_controls_badd(struct usb_mixer_interface *mixer,
           int ctrlif)
{
 struct usb_device *dev = mixer->chip->dev;
 struct usb_interface_assoc_descriptor *assoc;
 int badd_profile = mixer->chip->badd_profile;
 struct uac3_badd_profile *f;
 const struct usbmix_ctl_map *map;
 int p_chmask = 0, c_chmask = 0, st_chmask = 0;
 int i;

 assoc = usb_ifnum_to_if(dev, ctrlif)->intf_assoc;


 for (i = 0; i < assoc->bInterfaceCount; i++) {
  int intf = assoc->bFirstInterface + i;

  struct usb_interface *iface;
  struct usb_host_interface *alts;
  struct usb_interface_descriptor *altsd;
  unsigned int maxpacksize;
  char dir_in;
  int chmask, num;

  if (intf == ctrlif)
   continue;

  iface = usb_ifnum_to_if(dev, intf);
  num = iface->num_altsetting;

  if (num < 2)
   return -EINVAL;
  alts = &iface->altsetting[1];
  altsd = get_iface_desc(alts);

  if (altsd->bNumEndpoints < 1)
   return -EINVAL;


  dir_in = (get_endpoint(alts, 0)->bEndpointAddress & USB_DIR_IN);
  maxpacksize = le16_to_cpu(get_endpoint(alts, 0)->wMaxPacketSize);

  switch (maxpacksize) {
  default:
   usb_audio_err(mixer->chip,
    "incorrect wMaxPacketSize 0x%x for BADD profile\n",
    maxpacksize);
   return -EINVAL;
  case 131:
  case 135:
  case 130:
  case 134:
   chmask = 1;
   break;
  case 129:
  case 133:
  case 128:
  case 132:
   chmask = 3;
   break;
  }

  if (dir_in)
   c_chmask = chmask;
  else
   p_chmask = chmask;
 }

 usb_audio_dbg(mixer->chip,
  "UAC3 BADD profile 0x%x: detected c_chmask=%d p_chmask=%d\n",
  badd_profile, c_chmask, p_chmask);


 for (map = uac3_badd_usbmix_ctl_maps; map->id; map++) {
  if (map->id == badd_profile)
   break;
 }

 if (!map->id)
  return -EINVAL;

 for (f = uac3_badd_profiles; f->name; f++) {
  if (badd_profile == f->subclass)
   break;
 }
 if (!f->name)
  return -EINVAL;
 if (!uac3_badd_func_has_valid_channels(mixer, f, c_chmask, p_chmask))
  return -EINVAL;
 st_chmask = f->st_chmask;


 if (p_chmask) {

  build_feature_ctl_badd(mixer, 0, UAC_FU_MUTE,
           UAC3_BADD_FU_ID2, map->map);

  build_feature_ctl_badd(mixer, p_chmask, UAC_FU_VOLUME,
           UAC3_BADD_FU_ID2, map->map);
 }


 if (c_chmask) {

  build_feature_ctl_badd(mixer, 0, UAC_FU_MUTE,
           UAC3_BADD_FU_ID5, map->map);

  build_feature_ctl_badd(mixer, c_chmask, UAC_FU_VOLUME,
           UAC3_BADD_FU_ID5, map->map);
 }


 if (st_chmask) {

  build_feature_ctl_badd(mixer, 0, UAC_FU_MUTE,
           UAC3_BADD_FU_ID7, map->map);

  build_feature_ctl_badd(mixer, 1, UAC_FU_VOLUME,
           UAC3_BADD_FU_ID7, map->map);
 }


 if (f->subclass == UAC3_FUNCTION_SUBCLASS_HEADSET_ADAPTER) {
  struct usb_audio_term iterm, oterm;


  memset(&iterm, 0, sizeof(iterm));
  iterm.id = UAC3_BADD_IT_ID4;
  iterm.type = UAC_BIDIR_TERMINAL_HEADSET;
  build_connector_control(mixer, &iterm, 1);


  memset(&oterm, 0, sizeof(oterm));
  oterm.id = UAC3_BADD_OT_ID3;
  oterm.type = UAC_BIDIR_TERMINAL_HEADSET;
  build_connector_control(mixer, &oterm, 0);
 }

 return 0;
}
