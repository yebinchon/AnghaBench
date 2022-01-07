
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_mode; } ;




 unsigned short SNDRV_RAWMIDI_LFLG_INPUT ;
 unsigned short SNDRV_RAWMIDI_LFLG_OPEN ;
 unsigned short SNDRV_RAWMIDI_LFLG_OUTPUT ;

__attribute__((used)) static inline unsigned short snd_rawmidi_file_flags(struct file *file)
{
 switch (file->f_mode & (129 | 128)) {
 case 128:
  return SNDRV_RAWMIDI_LFLG_OUTPUT;
 case 129:
  return SNDRV_RAWMIDI_LFLG_INPUT;
 default:
  return SNDRV_RAWMIDI_LFLG_OPEN;
 }
}
