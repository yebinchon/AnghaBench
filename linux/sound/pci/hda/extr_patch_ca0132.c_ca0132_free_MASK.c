#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hda_codec {struct ca0132_spec* spec; TYPE_1__* bus; } ;
struct ca0132_spec {struct ca0132_spec* spec_init_verbs; scalar_t__ mem_base; int /*<<< orphan*/  base_exit_verbs; int /*<<< orphan*/  unsol_hp_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  pci; } ;

/* Variables and functions */
#define  QUIRK_AE5 132 
#define  QUIRK_R3D 131 
#define  QUIRK_R3DI 130 
#define  QUIRK_SBZ 129 
#define  QUIRK_ZXR 128 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct ca0132_spec*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ca0132_spec*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC9 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC10 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC11 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hda_codec*) ; 

__attribute__((used)) static void FUNC13(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;

	FUNC3(&spec->unsol_hp_work);
	FUNC10(codec);
	switch (FUNC2(spec)) {
	case QUIRK_SBZ:
		FUNC8(codec);
		break;
	case QUIRK_ZXR:
		FUNC12(codec);
		break;
	case QUIRK_R3D:
		FUNC6(codec);
		break;
	case QUIRK_AE5:
		FUNC0(codec);
		break;
	case QUIRK_R3DI:
		FUNC7(codec);
		break;
	default:
		break;
	}

	FUNC11(codec, spec->base_exit_verbs);
	FUNC1(codec);

	FUNC9(codec);
#ifdef CONFIG_PCI
	if (spec->mem_base)
		pci_iounmap(codec->bus->pci, spec->mem_base);
#endif
	FUNC4(spec->spec_init_verbs);
	FUNC4(codec->spec);
}