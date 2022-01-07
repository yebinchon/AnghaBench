
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {scalar_t__ subsystem_vendor; int subsystem_device; scalar_t__ id; } ;
struct ac97_quirk {scalar_t__ subvendor; int mask; int subdevice; scalar_t__ codec_id; int name; int type; } ;


 int EINVAL ;
 int ac97_dbg (struct snd_ac97*,char*,int ,scalar_t__,int) ;
 int ac97_err (struct snd_ac97*,char*,char const*,int,...) ;
 int apply_quirk (struct snd_ac97*,int ) ;
 int apply_quirk_str (struct snd_ac97*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

int snd_ac97_tune_hardware(struct snd_ac97 *ac97,
      const struct ac97_quirk *quirk, const char *override)
{
 int result;


 if (override && strcmp(override, "-1") && strcmp(override, "default")) {
  result = apply_quirk_str(ac97, override);
  if (result < 0)
   ac97_err(ac97, "applying quirk type %s failed (%d)\n",
     override, result);
  return result;
 }

 if (! quirk)
  return -EINVAL;

 for (; quirk->subvendor; quirk++) {
  if (quirk->subvendor != ac97->subsystem_vendor)
   continue;
  if ((! quirk->mask && quirk->subdevice == ac97->subsystem_device) ||
      quirk->subdevice == (quirk->mask & ac97->subsystem_device)) {
   if (quirk->codec_id && quirk->codec_id != ac97->id)
    continue;
   ac97_dbg(ac97, "ac97 quirk for %s (%04x:%04x)\n",
     quirk->name, ac97->subsystem_vendor,
     ac97->subsystem_device);
   result = apply_quirk(ac97, quirk->type);
   if (result < 0)
    ac97_err(ac97,
      "applying quirk type %d for %s failed (%d)\n",
      quirk->type, quirk->name, result);
   return result;
  }
 }
 return 0;
}
