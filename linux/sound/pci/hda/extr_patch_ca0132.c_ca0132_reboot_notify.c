
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* free ) (struct hda_codec*) ;} ;
struct hda_codec {TYPE_1__ patch_ops; } ;


 int stub1 (struct hda_codec*) ;

__attribute__((used)) static void ca0132_reboot_notify(struct hda_codec *codec)
{
 codec->patch_ops.free(codec);
}
