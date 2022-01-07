
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AUDIO_HDMI_CONFIG_A ;
 int AUDIO_HDMI_CONFIG_B ;
 int AUDIO_HDMI_CONFIG_C ;

__attribute__((used)) static u32 had_config_offset(int pipe)
{
 switch (pipe) {
 default:
 case 0:
  return AUDIO_HDMI_CONFIG_A;
 case 1:
  return AUDIO_HDMI_CONFIG_B;
 case 2:
  return AUDIO_HDMI_CONFIG_C;
 }
}
