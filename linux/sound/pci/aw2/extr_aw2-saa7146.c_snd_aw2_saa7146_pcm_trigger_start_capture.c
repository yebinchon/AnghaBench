
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_aw2_saa7146 {int dummy; } ;


 int MC1 ;
 int TR_E_A1_IN ;
 int WRITEREG (int,int ) ;

void snd_aw2_saa7146_pcm_trigger_start_capture(struct snd_aw2_saa7146 *chip,
            int stream_number)
{


 if (stream_number == 0)
  WRITEREG((TR_E_A1_IN << 16) | TR_E_A1_IN, MC1);
}
