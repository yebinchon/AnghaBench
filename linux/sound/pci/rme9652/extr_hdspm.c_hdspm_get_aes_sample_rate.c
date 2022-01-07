
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int io_type; } ;



 int HDSPM_timecodeRegister ;
 int hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static int hdspm_get_aes_sample_rate(struct hdspm *hdspm, int index)
{
 int timecode;

 switch (hdspm->io_type) {
 case 128:
  timecode = hdspm_read(hdspm, HDSPM_timecodeRegister);
  return (timecode >> (4*index)) & 0xF;
  break;
 default:
  break;
 }
 return 0;
}
