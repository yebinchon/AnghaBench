#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {void** item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdspm {int io_type; } ;

/* Variables and functions */
#define  AES32 132 
#define  AIO 131 
 scalar_t__ HDSPM_AES32_AUTOSYNC_FROM_AES1 ; 
#define  MADI 130 
#define  MADIface 129 
#define  RayDAT 128 
 void* FUNC0 (struct hdspm*) ; 
 void* FUNC1 (struct hdspm*,scalar_t__) ; 
 void* FUNC2 (struct hdspm*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct hdspm*) ; 
 void* FUNC4 (struct hdspm*) ; 
 void* FUNC5 (struct hdspm*) ; 
 struct hdspm* FUNC6 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kcontrol,
					      struct snd_ctl_elem_value *
					      ucontrol)
{
	struct hdspm *hdspm = FUNC6(kcontrol);

	switch (hdspm->io_type) {
	case RayDAT:
		switch (kcontrol->private_value) {
		case 0:
			ucontrol->value.enumerated.item[0] =
				FUNC5(hdspm);
			break;
		case 7:
			ucontrol->value.enumerated.item[0] =
				FUNC4(hdspm);
			break;
		case 8:
			ucontrol->value.enumerated.item[0] =
				FUNC3(hdspm);
			break;
		default:
			ucontrol->value.enumerated.item[0] =
				FUNC2(hdspm,
						kcontrol->private_value-1);
		}
		break;

	case AIO:
		switch (kcontrol->private_value) {
		case 0: /* WC */
			ucontrol->value.enumerated.item[0] =
				FUNC5(hdspm);
			break;
		case 4: /* TCO */
			ucontrol->value.enumerated.item[0] =
				FUNC4(hdspm);
			break;
		case 5: /* SYNC_IN */
			ucontrol->value.enumerated.item[0] =
				FUNC3(hdspm);
			break;
		default:
			ucontrol->value.enumerated.item[0] =
				FUNC2(hdspm,
						kcontrol->private_value-1);
		}
		break;

	case AES32:

		switch (kcontrol->private_value) {
		case 0: /* WC */
			ucontrol->value.enumerated.item[0] =
				FUNC5(hdspm);
			break;
		case 9: /* TCO */
			ucontrol->value.enumerated.item[0] =
				FUNC4(hdspm);
			break;
		case 10: /* SYNC_IN */
			ucontrol->value.enumerated.item[0] =
				FUNC3(hdspm);
			break;
		case 11: /* External Rate */
			ucontrol->value.enumerated.item[0] =
				FUNC0(hdspm);
			break;
		default: /* AES1 to AES8 */
			ucontrol->value.enumerated.item[0] =
				FUNC1(hdspm,
						kcontrol->private_value -
						HDSPM_AES32_AUTOSYNC_FROM_AES1);
			break;
		}
		break;

	case MADI:
	case MADIface:
		ucontrol->value.enumerated.item[0] =
			FUNC0(hdspm);
		break;
	default:
		break;
	}

	return 0;
}