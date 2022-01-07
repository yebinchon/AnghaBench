
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_beep {int dummy; } ;


 int DIGBEEP_HZ_MAX ;
 int DIGBEEP_HZ_MIN ;
 int DIGBEEP_HZ_STEP ;

__attribute__((used)) static int beep_linear_tone(struct hda_beep *beep, int hz)
{
 if (hz <= 0)
  return 0;
 hz *= 1000;
 hz = hz - DIGBEEP_HZ_MIN
  + DIGBEEP_HZ_STEP / 2;
 if (hz < 0)
  hz = 0;
 else if (hz >= (DIGBEEP_HZ_MAX - DIGBEEP_HZ_MIN))
  hz = 1;
 else {
  hz /= DIGBEEP_HZ_STEP;
  hz = 255 - hz;
 }
 return hz;
}
