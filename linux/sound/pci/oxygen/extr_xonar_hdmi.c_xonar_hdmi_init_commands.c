
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xonar_hdmi {int* params; } ;
struct oxygen {int dummy; } ;


 int hdmi_write_command (struct oxygen*,int,int,int*) ;
 int oxygen_reset_uart (struct oxygen*) ;

__attribute__((used)) static void xonar_hdmi_init_commands(struct oxygen *chip,
         struct xonar_hdmi *hdmi)
{
 u8 param;

 oxygen_reset_uart(chip);
 param = 0;
 hdmi_write_command(chip, 0x61, 1, &param);
 param = 1;
 hdmi_write_command(chip, 0x74, 1, &param);
 hdmi_write_command(chip, 0x54, 5, hdmi->params);
}
