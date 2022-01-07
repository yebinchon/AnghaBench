
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_azf3328_codec_data {int running; int name; } ;
struct snd_azf3328 {struct snd_azf3328_codec_data* codecs; TYPE_1__* card; } ;
typedef enum snd_azf3328_codec_type { ____Placeholder_snd_azf3328_codec_type } snd_azf3328_codec_type ;
struct TYPE_2__ {int dev; } ;





 int dev_dbg (int ,char*,int ,int,int) ;
 int snd_azf3328_codec_setfmt_lowpower (struct snd_azf3328_codec_data*) ;
 int snd_azf3328_ctrl_enable_codecs (struct snd_azf3328*,int) ;

__attribute__((used)) static void
snd_azf3328_ctrl_codec_activity(struct snd_azf3328 *chip,
    enum snd_azf3328_codec_type codec_type,
    bool enable
)
{
 struct snd_azf3328_codec_data *codec = &chip->codecs[codec_type];
 bool need_change = (codec->running != enable);

 dev_dbg(chip->card->dev,
  "codec_activity: %s codec, enable %d, need_change %d\n",
    codec->name, enable, need_change
 );
 if (need_change) {
  static const struct {
   enum snd_azf3328_codec_type other1;
   enum snd_azf3328_codec_type other2;
  } peer_codecs[3] =
   { { 130, 129 },
     { 128, 129 },
     { 128, 130 } };
  bool call_function;

  if (enable)


   call_function = 1;
  else {




   call_function =
    ((!chip->codecs[peer_codecs[codec_type].other1]
     .running)
        && (!chip->codecs[peer_codecs[codec_type].other2]
     .running));
  }
  if (call_function)
   snd_azf3328_ctrl_enable_codecs(chip, enable);



  if (!enable)
   snd_azf3328_codec_setfmt_lowpower(codec);
  codec->running = enable;
 }
}
