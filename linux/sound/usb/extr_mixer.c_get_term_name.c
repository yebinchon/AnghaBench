
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_audio_term {int type; int id; scalar_t__ name; } ;
struct snd_usb_audio {int dummy; } ;
struct iterm_name_combo {int type; char* name; } ;






 struct iterm_name_combo* iterm_names ;
 int snd_usb_copy_string_desc (struct snd_usb_audio*,scalar_t__,unsigned char*,int) ;
 int sprintf (unsigned char*,char*,int) ;
 int strcpy (unsigned char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int get_term_name(struct snd_usb_audio *chip, struct usb_audio_term *iterm,
    unsigned char *name, int maxlen, int term_only)
{
 struct iterm_name_combo *names;
 int len;

 if (iterm->name) {
  len = snd_usb_copy_string_desc(chip, iterm->name,
      name, maxlen);
  if (len)
   return len;
 }


 if (iterm->type >> 16) {
  if (term_only)
   return 0;
  switch (iterm->type >> 16) {
  case 128:
   strcpy(name, "Selector");
   return 8;
  case 129:
   strcpy(name, "Process Unit");
   return 12;
  case 131:
   strcpy(name, "Ext Unit");
   return 8;
  case 130:
   strcpy(name, "Mixer");
   return 5;
  default:
   return sprintf(name, "Unit %d", iterm->id);
  }
 }

 switch (iterm->type & 0xff00) {
 case 0x0100:
  strcpy(name, "PCM");
  return 3;
 case 0x0200:
  strcpy(name, "Mic");
  return 3;
 case 0x0400:
  strcpy(name, "Headset");
  return 7;
 case 0x0500:
  strcpy(name, "Phone");
  return 5;
 }

 for (names = iterm_names; names->type; names++) {
  if (names->type == iterm->type) {
   strcpy(name, names->name);
   return strlen(names->name);
  }
 }

 return 0;
}
