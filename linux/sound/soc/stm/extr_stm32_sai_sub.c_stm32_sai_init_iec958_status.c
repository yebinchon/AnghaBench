
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* status; } ;
struct stm32_sai_sub_data {TYPE_1__ iec958; } ;


 unsigned char IEC958_AES0_CON_EMPHASIS_NONE ;
 unsigned char IEC958_AES0_CON_NOT_COPYRIGHT ;
 unsigned char IEC958_AES1_CON_GENERAL ;
 unsigned char IEC958_AES2_CON_CHANNEL_UNSPEC ;
 unsigned char IEC958_AES2_CON_SOURCE_UNSPEC ;
 unsigned char IEC958_AES3_CON_CLOCK_1000PPM ;
 unsigned char IEC958_AES3_CON_FS_NOTID ;

__attribute__((used)) static void stm32_sai_init_iec958_status(struct stm32_sai_sub_data *sai)
{
 unsigned char *cs = sai->iec958.status;

 cs[0] = IEC958_AES0_CON_NOT_COPYRIGHT | IEC958_AES0_CON_EMPHASIS_NONE;
 cs[1] = IEC958_AES1_CON_GENERAL;
 cs[2] = IEC958_AES2_CON_SOURCE_UNSPEC | IEC958_AES2_CON_CHANNEL_UNSPEC;
 cs[3] = IEC958_AES3_CON_CLOCK_1000PPM | IEC958_AES3_CON_FS_NOTID;
}
