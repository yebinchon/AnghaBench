
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int settings_register; int io_type; int control_register; int control2_register; } ;




 int HDSPM_BIGENDIAN_MODE ;
 int HDSPM_ClockModeMaster ;
 int HDSPM_LineOut ;
 int HDSPM_Professional ;
 int HDSPM_SyncRef0 ;
 int HDSPM_WR_SETTINGS ;
 int HDSPM_control2Reg ;
 int HDSPM_controlRegister ;



 int UNITY_GAIN ;
 int all_in_all_mixer (struct hdspm*,int) ;
 int hdspm_compute_period_size (struct hdspm*) ;
 int hdspm_encode_latency (int) ;
 scalar_t__ hdspm_is_raydat_or_aio (struct hdspm*) ;
 int hdspm_set_rate (struct hdspm*,int,int) ;
 int hdspm_write (struct hdspm*,int ,int) ;

__attribute__((used)) static int snd_hdspm_set_defaults(struct hdspm * hdspm)
{






 hdspm->settings_register = 0;

 switch (hdspm->io_type) {
 case 130:
 case 129:
  hdspm->control_register =
   0x2 + 0x8 + 0x10 + 0x80 + 0x400 + 0x4000 + 0x1000000;
  break;

 case 128:
 case 131:
  hdspm->settings_register = 0x1 + 0x1000;


  hdspm->control_register =
   0x2 + 0x8 + 0x10 + 0x80 + 0x400 + 0x4000 + 0x1000000;
  break;

 case 132:
  hdspm->control_register =
   HDSPM_ClockModeMaster |
   hdspm_encode_latency(7) |
   HDSPM_SyncRef0 |
   HDSPM_LineOut |
   HDSPM_Professional;
  break;
 }

 hdspm_write(hdspm, HDSPM_controlRegister, hdspm->control_register);

 if (132 == hdspm->io_type) {




  hdspm->control2_register = 0;


  hdspm_write(hdspm, HDSPM_control2Reg, hdspm->control2_register);
 }
 hdspm_compute_period_size(hdspm);



 all_in_all_mixer(hdspm, 0 * UNITY_GAIN);

 if (hdspm_is_raydat_or_aio(hdspm))
  hdspm_write(hdspm, HDSPM_WR_SETTINGS, hdspm->settings_register);


 hdspm_set_rate(hdspm, 48000, 1);

 return 0;
}
