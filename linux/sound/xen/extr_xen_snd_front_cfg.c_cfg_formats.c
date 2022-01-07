
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct snd_pcm_hardware {int formats; } ;
struct TYPE_3__ {int mask; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* CFG_HW_SUPPORTED_FORMATS ;
 int XENSND_LIST_SEPARATOR ;
 int XENSND_SAMPLE_FORMAT_MAX_LEN ;
 int strncasecmp (char*,int ,int ) ;
 char* strsep (char**,int ) ;

__attribute__((used)) static void cfg_formats(char *list, unsigned int len,
   const char *path, struct snd_pcm_hardware *pcm_hw)
{
 u64 formats;
 char *cur_format;
 int i;

 formats = 0;
 while ((cur_format = strsep(&list, XENSND_LIST_SEPARATOR))) {
  for (i = 0; i < ARRAY_SIZE(CFG_HW_SUPPORTED_FORMATS); i++)
   if (!strncasecmp(cur_format,
      CFG_HW_SUPPORTED_FORMATS[i].name,
      XENSND_SAMPLE_FORMAT_MAX_LEN))
    formats |= CFG_HW_SUPPORTED_FORMATS[i].mask;
 }

 if (formats)
  pcm_hw->formats = formats;
}
