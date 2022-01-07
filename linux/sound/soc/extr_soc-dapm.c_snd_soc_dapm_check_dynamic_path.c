
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int id; int name; } ;
struct snd_soc_dapm_context {int dev; } ;


 int EINVAL ;
 int dev_err (int ,char*,int ,char const*,int ) ;






__attribute__((used)) static int snd_soc_dapm_check_dynamic_path(struct snd_soc_dapm_context *dapm,
 struct snd_soc_dapm_widget *source, struct snd_soc_dapm_widget *sink,
 const char *control)
{
 bool dynamic_source = 0;
 bool dynamic_sink = 0;

 if (!control)
  return 0;

 switch (source->id) {
 case 132:
  dynamic_source = 1;
  break;
 default:
  break;
 }

 switch (sink->id) {
 case 129:
 case 128:
 case 131:
 case 130:
  dynamic_sink = 1;
  break;
 default:
  break;
 }

 if (dynamic_source && dynamic_sink) {
  dev_err(dapm->dev,
   "Direct connection between demux and mixer/mux not supported for path %s -> [%s] -> %s\n",
   source->name, control, sink->name);
  return -EINVAL;
 } else if (!dynamic_source && !dynamic_sink) {
  dev_err(dapm->dev,
   "Control not supported for path %s -> [%s] -> %s\n",
   source->name, control, sink->name);
  return -EINVAL;
 }

 return 0;
}
