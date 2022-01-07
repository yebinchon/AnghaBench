
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int chip; } ;
struct usb_audio_term {int dummy; } ;


 int get_term_name (int ,struct usb_audio_term*,char*,int,int ) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static void get_connector_control_name(struct usb_mixer_interface *mixer,
           struct usb_audio_term *term,
           bool is_input, char *name, int name_size)
{
 int name_len = get_term_name(mixer->chip, term, name, name_size, 0);

 if (name_len == 0)
  strlcpy(name, "Unknown", name_size);






 if (is_input)
  strlcat(name, " - Input Jack", name_size);
 else
  strlcat(name, " - Output Jack", name_size);
}
