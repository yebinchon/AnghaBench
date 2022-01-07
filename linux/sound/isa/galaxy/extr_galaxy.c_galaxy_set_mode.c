
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_galaxy {int port; } ;


 int DSP_COMMAND_GALAXY_9 ;
 int dsp_command (int ,int ) ;
 int dsp_reset (int ) ;

__attribute__((used)) static int galaxy_set_mode(struct snd_galaxy *galaxy, u8 mode)
{
 int err;

 err = dsp_command(galaxy->port, DSP_COMMAND_GALAXY_9);
 if (err < 0)
  return err;

 err = dsp_command(galaxy->port, mode);
 if (err < 0)
  return err;
 return 0;
}
