
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int bq_mode_name ;
 int dev_err (int ,char*,char const*) ;
 int match_string (int ,int ,char const*) ;

__attribute__((used)) static int max98095_get_bq_channel(struct snd_soc_component *component,
       const char *name)
{
 int ret;

 ret = match_string(bq_mode_name, ARRAY_SIZE(bq_mode_name), name);
 if (ret < 0)
  dev_err(component->dev, "Bad biquad channel name '%s'\n", name);
 return ret;
}
