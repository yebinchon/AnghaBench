
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_feature_control_info {int control; } ;


 int ARRAY_SIZE (struct usb_feature_control_info*) ;
 struct usb_feature_control_info* audio_feature_info ;

__attribute__((used)) static struct usb_feature_control_info *get_feature_control_info(int control)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(audio_feature_info); ++i) {
  if (audio_feature_info[i].control == control)
   return &audio_feature_info[i];
 }
 return ((void*)0);
}
