
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dir; } ;
struct uniphier_aio_spec {scalar_t__ gname; scalar_t__ name; TYPE_1__ swm; } ;


 scalar_t__ PORT_DIR_INPUT ;
 scalar_t__ PORT_DIR_OUTPUT ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

__attribute__((used)) static bool match_spec(const struct uniphier_aio_spec *spec,
         const char *name, int dir)
{
 if (dir == SNDRV_PCM_STREAM_PLAYBACK &&
     spec->swm.dir != PORT_DIR_OUTPUT) {
  return 0;
 }

 if (dir == SNDRV_PCM_STREAM_CAPTURE &&
     spec->swm.dir != PORT_DIR_INPUT) {
  return 0;
 }

 if (spec->name && strcmp(spec->name, name) == 0)
  return 1;

 if (spec->gname && strcmp(spec->gname, name) == 0)
  return 1;

 return 0;
}
