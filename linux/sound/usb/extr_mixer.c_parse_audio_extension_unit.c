
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixer_build {int dummy; } ;


 int build_audio_procunit (struct mixer_build*,int,void*,int ,int) ;
 int extunits ;

__attribute__((used)) static int parse_audio_extension_unit(struct mixer_build *state, int unitid,
          void *raw_desc)
{




 return build_audio_procunit(state, unitid, raw_desc, extunits, 1);
}
