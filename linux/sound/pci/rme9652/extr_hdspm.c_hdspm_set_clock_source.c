
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int dummy; } ;


 int hdspm_set_rate (struct hdspm*,int,int) ;

__attribute__((used)) static int hdspm_set_clock_source(struct hdspm * hdspm, int mode)
{
 int rate;
 switch (mode) {
 case 0:
  rate = 32000; break;
 case 1:
  rate = 44100; break;
 case 2:
  rate = 48000; break;
 case 3:
  rate = 64000; break;
 case 4:
  rate = 88200; break;
 case 5:
  rate = 96000; break;
 case 6:
  rate = 128000; break;
 case 7:
  rate = 176400; break;
 case 8:
  rate = 192000; break;
 default:
  rate = 48000;
 }
 hdspm_set_rate(hdspm, rate, 1);
 return 0;
}
