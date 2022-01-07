
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dump_coef; } ;


 int dump_coef ;

__attribute__((used)) static inline bool can_dump_coef(struct hda_codec *codec)
{
 switch (dump_coef) {
 case 0: return 0;
 case 1: return 1;
 default: return codec->dump_coef;
 }
}
