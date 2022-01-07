
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct usb_host_interface {int extralen; int extra; } ;
struct usb_device {int dev; } ;
struct uac_input_terminal_descriptor {unsigned int bNrChannels; int wChannelConfig; } ;
struct uac_format_type_i_continuous_descriptor {int bLength; int bNrChannels; int bSubframeSize; } ;
struct uac2_output_terminal_descriptor {int bCSourceID; } ;
struct uac2_input_terminal_descriptor {int bCSourceID; unsigned int bNrChannels; int bmChannelConfig; } ;
struct uac2_as_header_descriptor {int bLength; unsigned int bNrChannels; int bTerminalLink; int bmChannelConfig; int bmFormats; } ;
struct uac1_as_header_descriptor {int bLength; int bTerminalLink; int wFormatTag; } ;
struct snd_usb_audio {int ctrl_intf; struct usb_device* dev; } ;
struct audioformat {unsigned int channels; int chmap; int attributes; } ;


 int ENOMEM ;
 struct audioformat* ERR_PTR (int ) ;
 int UAC_AS_GENERAL ;
 int UAC_FORMAT_TYPE ;
 int UAC_VERSION_1 ;
 int UAC_VERSION_2 ;
 struct audioformat* audio_format_alloc_init (struct snd_usb_audio*,struct usb_host_interface*,int,int,int,int,unsigned int,int) ;
 int audioformat_free (struct audioformat*) ;
 int convert_chmap (unsigned int,unsigned int,int) ;
 int dev_err (int *,char*,int,int,...) ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int parse_uac_endpoint_attributes (struct snd_usb_audio*,struct usb_host_interface*,int,int) ;
 int snd_usb_audioformat_attributes_quirk (struct snd_usb_audio*,struct audioformat*,int) ;
 void* snd_usb_find_csint_desc (int ,int ,int *,int ) ;
 void* snd_usb_find_input_terminal_descriptor (int ,int ,int) ;
 struct uac2_output_terminal_descriptor* snd_usb_find_output_terminal_descriptor (int ,int ,int) ;
 scalar_t__ snd_usb_parse_audio_format (struct snd_usb_audio*,struct audioformat*,void*,struct uac_format_type_i_continuous_descriptor*,int) ;

__attribute__((used)) static struct audioformat *
snd_usb_get_audioformat_uac12(struct snd_usb_audio *chip,
         struct usb_host_interface *alts,
         int protocol, int iface_no, int altset_idx,
         int altno, int stream, int bm_quirk)
{
 struct usb_device *dev = chip->dev;
 struct uac_format_type_i_continuous_descriptor *fmt;
 unsigned int num_channels = 0, chconfig = 0;
 struct audioformat *fp;
 int clock = 0;
 u64 format;


 if (protocol == UAC_VERSION_1) {
  struct uac1_as_header_descriptor *as =
   snd_usb_find_csint_desc(alts->extra, alts->extralen,
      ((void*)0), UAC_AS_GENERAL);
  struct uac_input_terminal_descriptor *iterm;

  if (!as) {
   dev_err(&dev->dev,
    "%u:%d : UAC_AS_GENERAL descriptor not found\n",
    iface_no, altno);
   return ((void*)0);
  }

  if (as->bLength < sizeof(*as)) {
   dev_err(&dev->dev,
    "%u:%d : invalid UAC_AS_GENERAL desc\n",
    iface_no, altno);
   return ((void*)0);
  }

  format = le16_to_cpu(as->wFormatTag);

  iterm = snd_usb_find_input_terminal_descriptor(chip->ctrl_intf,
              as->bTerminalLink,
              protocol);
  if (iterm) {
   num_channels = iterm->bNrChannels;
   chconfig = le16_to_cpu(iterm->wChannelConfig);
  }
 } else {
  struct uac2_input_terminal_descriptor *input_term;
  struct uac2_output_terminal_descriptor *output_term;
  struct uac2_as_header_descriptor *as =
   snd_usb_find_csint_desc(alts->extra, alts->extralen,
      ((void*)0), UAC_AS_GENERAL);

  if (!as) {
   dev_err(&dev->dev,
    "%u:%d : UAC_AS_GENERAL descriptor not found\n",
    iface_no, altno);
   return ((void*)0);
  }

  if (as->bLength < sizeof(*as)) {
   dev_err(&dev->dev,
    "%u:%d : invalid UAC_AS_GENERAL desc\n",
    iface_no, altno);
   return ((void*)0);
  }

  num_channels = as->bNrChannels;
  format = le32_to_cpu(as->bmFormats);
  chconfig = le32_to_cpu(as->bmChannelConfig);





  input_term = snd_usb_find_input_terminal_descriptor(chip->ctrl_intf,
            as->bTerminalLink,
            protocol);
  if (input_term) {
   clock = input_term->bCSourceID;
   if (!chconfig && (num_channels == input_term->bNrChannels))
    chconfig = le32_to_cpu(input_term->bmChannelConfig);
   goto found_clock;
  }

  output_term = snd_usb_find_output_terminal_descriptor(chip->ctrl_intf,
              as->bTerminalLink,
              protocol);
  if (output_term) {
   clock = output_term->bCSourceID;
   goto found_clock;
  }

  dev_err(&dev->dev,
   "%u:%d : bogus bTerminalLink %d\n",
   iface_no, altno, as->bTerminalLink);
  return ((void*)0);
 }

found_clock:

 fmt = snd_usb_find_csint_desc(alts->extra, alts->extralen,
          ((void*)0), UAC_FORMAT_TYPE);
 if (!fmt) {
  dev_err(&dev->dev,
   "%u:%d : no UAC_FORMAT_TYPE desc\n",
   iface_no, altno);
  return ((void*)0);
 }
 if (((protocol == UAC_VERSION_1) && (fmt->bLength < 8))
   || ((protocol == UAC_VERSION_2) &&
     (fmt->bLength < 6))) {
  dev_err(&dev->dev,
   "%u:%d : invalid UAC_FORMAT_TYPE desc\n",
   iface_no, altno);
  return ((void*)0);
 }
 if (bm_quirk && fmt->bNrChannels == 1 && fmt->bSubframeSize == 2)
  return ((void*)0);

 fp = audio_format_alloc_init(chip, alts, protocol, iface_no,
         altset_idx, altno, num_channels, clock);
 if (!fp)
  return ERR_PTR(-ENOMEM);

 fp->attributes = parse_uac_endpoint_attributes(chip, alts, protocol,
             iface_no);


 snd_usb_audioformat_attributes_quirk(chip, fp, stream);


 if (snd_usb_parse_audio_format(chip, fp, format,
     fmt, stream) < 0) {
  audioformat_free(fp);
  return ((void*)0);
 }


 if (fp->channels != num_channels)
  chconfig = 0;

 fp->chmap = convert_chmap(fp->channels, chconfig, protocol);

 return fp;
}
