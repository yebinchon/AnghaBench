
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_verb {int dummy; } ;
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {TYPE_1__* spec_init_verbs; int desktop_init_verbs; int chip_init_verbs; } ;
struct TYPE_2__ {int nid; int param; int verb; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NUM_SPEC_VERBS ;
 int ca0132_init_verbs0 ;
 int ca0132_init_verbs1 ;
 scalar_t__ ca0132_use_pci_mmio (struct ca0132_spec*) ;
 TYPE_1__* kcalloc (int ,int,int ) ;

__attribute__((used)) static int ca0132_prepare_verbs(struct hda_codec *codec)
{


 struct ca0132_spec *spec = codec->spec;

 spec->chip_init_verbs = ca0132_init_verbs0;




 if (ca0132_use_pci_mmio(spec))
  spec->desktop_init_verbs = ca0132_init_verbs1;
 spec->spec_init_verbs = kcalloc(2,
     sizeof(struct hda_verb),
     GFP_KERNEL);
 if (!spec->spec_init_verbs)
  return -ENOMEM;


 spec->spec_init_verbs[0].nid = 0x0b;
 spec->spec_init_verbs[0].param = 0x78D;
 spec->spec_init_verbs[0].verb = 0x00;
 return 0;
}
