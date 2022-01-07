
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mixer_build {TYPE_1__* mixer; } ;
struct TYPE_2__ {int protocol; } ;





 int build_audio_procunit (struct mixer_build*,int,void*,int ,int) ;
 int procunits ;
 int uac3_procunits ;

__attribute__((used)) static int parse_audio_processing_unit(struct mixer_build *state, int unitid,
           void *raw_desc)
{
 switch (state->mixer->protocol) {
 case 130:
 case 129:
 default:
  return build_audio_procunit(state, unitid, raw_desc,
         procunits, 0);
 case 128:
  return build_audio_procunit(state, unitid, raw_desc,
         uac3_procunits, 0);
 }
}
