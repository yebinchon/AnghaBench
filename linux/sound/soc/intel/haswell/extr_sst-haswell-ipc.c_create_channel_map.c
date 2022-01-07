
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum sst_hsw_channel_config { ____Placeholder_sst_hsw_channel_config } sst_hsw_channel_config ;


 int SST_HSW_CHANNEL_CENTER ;
 int SST_HSW_CHANNEL_CENTER_SURROUND ;
 int SST_HSW_CHANNEL_LEFT ;
 int SST_HSW_CHANNEL_LEFT_SURROUND ;
 int SST_HSW_CHANNEL_LFE ;
 int SST_HSW_CHANNEL_RIGHT ;
 int SST_HSW_CHANNEL_RIGHT_SURROUND ;

u32 create_channel_map(enum sst_hsw_channel_config config)
{
 switch (config) {
 case 130:
  return (0xFFFFFFF0 | SST_HSW_CHANNEL_CENTER);
 case 128:
  return (0xFFFFFF00 | SST_HSW_CHANNEL_LEFT
   | (SST_HSW_CHANNEL_RIGHT << 4));
 case 137:
  return (0xFFFFF000 | SST_HSW_CHANNEL_LEFT
   | (SST_HSW_CHANNEL_RIGHT << 4)
   | (SST_HSW_CHANNEL_LFE << 8 ));
 case 136:
  return (0xFFFFF000 | SST_HSW_CHANNEL_LEFT
   | (SST_HSW_CHANNEL_CENTER << 4)
   | (SST_HSW_CHANNEL_RIGHT << 8));
 case 135:
  return (0xFFFF0000 | SST_HSW_CHANNEL_LEFT
   | (SST_HSW_CHANNEL_CENTER << 4)
   | (SST_HSW_CHANNEL_RIGHT << 8)
   | (SST_HSW_CHANNEL_LFE << 12));
 case 129:
  return (0xFFFF0000 | SST_HSW_CHANNEL_LEFT
   | (SST_HSW_CHANNEL_RIGHT << 4)
   | (SST_HSW_CHANNEL_LEFT_SURROUND << 8)
   | (SST_HSW_CHANNEL_RIGHT_SURROUND << 12));
 case 134:
  return (0xFFFF0000 | SST_HSW_CHANNEL_LEFT
   | (SST_HSW_CHANNEL_CENTER << 4)
   | (SST_HSW_CHANNEL_RIGHT << 8)
   | (SST_HSW_CHANNEL_CENTER_SURROUND << 12));
 case 133:
  return (0xFFF00000 | SST_HSW_CHANNEL_LEFT
   | (SST_HSW_CHANNEL_CENTER << 4)
   | (SST_HSW_CHANNEL_RIGHT << 8)
   | (SST_HSW_CHANNEL_LEFT_SURROUND << 12)
   | (SST_HSW_CHANNEL_RIGHT_SURROUND << 16));
 case 132:
  return (0xFF000000 | SST_HSW_CHANNEL_CENTER
   | (SST_HSW_CHANNEL_LEFT << 4)
   | (SST_HSW_CHANNEL_RIGHT << 8)
   | (SST_HSW_CHANNEL_LEFT_SURROUND << 12)
   | (SST_HSW_CHANNEL_RIGHT_SURROUND << 16)
   | (SST_HSW_CHANNEL_LFE << 20));
 case 131:
  return (0xFFFFFF00 | SST_HSW_CHANNEL_LEFT
   | (SST_HSW_CHANNEL_LEFT << 4));
 default:
  return 0xFFFFFFFF;
 }
}
