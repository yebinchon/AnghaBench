
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct snd_galaxy {int port; } ;


 int DSP_COMMAND_GALAXY_8 ;
 int ENODEV ;
 int GALAXY_COMMAND_GET_TYPE ;
 scalar_t__ GALAXY_DSP_MAJOR ;
 scalar_t__ GALAXY_DSP_MINOR ;
 int dsp_command (int ,int ) ;
 int dsp_get_byte (int ,scalar_t__*) ;
 int dsp_get_version (int ,scalar_t__*,scalar_t__*) ;
 int dsp_reset (int ) ;

__attribute__((used)) static int galaxy_init(struct snd_galaxy *galaxy, u8 *type)
{
 u8 major;
 u8 minor;
 int err;

 err = dsp_reset(galaxy->port);
 if (err < 0)
  return err;

 err = dsp_get_version(galaxy->port, &major, &minor);
 if (err < 0)
  return err;

 if (major != GALAXY_DSP_MAJOR || minor != GALAXY_DSP_MINOR)
  return -ENODEV;

 err = dsp_command(galaxy->port, DSP_COMMAND_GALAXY_8);
 if (err < 0)
  return err;

 err = dsp_command(galaxy->port, GALAXY_COMMAND_GET_TYPE);
 if (err < 0)
  return err;

 err = dsp_get_byte(galaxy->port, type);
 if (err < 0)
  return err;

 return 0;
}
