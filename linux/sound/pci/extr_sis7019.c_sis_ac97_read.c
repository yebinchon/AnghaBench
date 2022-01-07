
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned short u32 ;
struct snd_ac97 {size_t num; int private_data; } ;





 unsigned short sis_ac97_rw (int ,size_t,unsigned short) ;

__attribute__((used)) static unsigned short sis_ac97_read(struct snd_ac97 *ac97, unsigned short reg)
{
 static const u32 cmd[3] = {
  128,
  130,
  129,
 };
 return sis_ac97_rw(ac97->private_data, ac97->num,
     (reg << 8) | cmd[ac97->num]);
}
