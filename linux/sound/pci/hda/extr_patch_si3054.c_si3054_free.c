
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int spec; } ;


 int kfree (int ) ;

__attribute__((used)) static void si3054_free(struct hda_codec *codec)
{
 kfree(codec->spec);
}
