
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* card; } ;
typedef TYPE_2__ vortex_t ;
typedef int snd_pcm_format_t ;
struct TYPE_4__ {int dev; } ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int vortex_alsafmt_aspfmt(snd_pcm_format_t alsafmt, vortex_t *v)
{
 int fmt;

 switch (alsafmt) {
 case 128:
  fmt = 0x1;
  break;
 case 132:
  fmt = 0x2;
  break;
 case 134:
  fmt = 0x3;
  break;
 case 129:
  fmt = 0x4;
  break;
 case 133:
  fmt = 0x5;
  break;
 case 130:
  fmt = 0x8;
  break;
 case 131:
  fmt = 0x9;
  break;
 default:
  fmt = 0x8;
  dev_err(v->card->dev,
   "format unsupported %d\n", alsafmt);
  break;
 }
 return fmt;
}
