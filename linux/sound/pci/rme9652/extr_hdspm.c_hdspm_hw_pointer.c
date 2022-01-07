
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int io_type; int period_bytes; } ;
typedef int snd_pcm_uframes_t ;



 int HDSPM_BufferID ;
 int HDSPM_BufferPositionMask ;
 int HDSPM_statusRegister ;

 int hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static snd_pcm_uframes_t hdspm_hw_pointer(struct hdspm *hdspm)
{
 int position;

 position = hdspm_read(hdspm, HDSPM_statusRegister);

 switch (hdspm->io_type) {
 case 128:
 case 129:
  position &= HDSPM_BufferPositionMask;
  position /= 4;
  break;
 default:
  position = (position & HDSPM_BufferID) ?
   (hdspm->period_bytes / 4) : 0;
 }

 return position;
}
