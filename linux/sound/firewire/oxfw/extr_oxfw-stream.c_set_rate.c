
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_oxfw {int unit; scalar_t__ has_output; } ;


 int AVC_GENERAL_PLUG_DIR_IN ;
 int AVC_GENERAL_PLUG_DIR_OUT ;
 int avc_general_set_sig_fmt (int ,unsigned int,int ,int ) ;

__attribute__((used)) static int set_rate(struct snd_oxfw *oxfw, unsigned int rate)
{
 int err;

 err = avc_general_set_sig_fmt(oxfw->unit, rate,
          AVC_GENERAL_PLUG_DIR_IN, 0);
 if (err < 0)
  goto end;

 if (oxfw->has_output)
  err = avc_general_set_sig_fmt(oxfw->unit, rate,
           AVC_GENERAL_PLUG_DIR_OUT, 0);
end:
 return err;
}
