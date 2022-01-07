
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;







 unsigned int ARRAY_SIZE (unsigned short*) ;
 int ak4396_write (struct snd_ice1712*,int const,unsigned short) ;
 int msleep (int) ;

__attribute__((used)) static void ak4396_init(struct snd_ice1712 *ice)
{
 static unsigned short ak4396_inits[] = {
  132, 0x87,
  131, 0x02,
  130, 0x00,
  129, 0x00,
  128, 0x00,
 };

 unsigned int i;



 ak4396_write(ice, 132, 0x86);
 msleep(100);
 ak4396_write(ice, 132, 0x87);

 for (i = 0; i < ARRAY_SIZE(ak4396_inits); i += 2)
  ak4396_write(ice, ak4396_inits[i], ak4396_inits[i+1]);
}
