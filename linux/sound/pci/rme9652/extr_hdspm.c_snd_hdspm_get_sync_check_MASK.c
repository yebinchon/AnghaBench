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
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdspm {int io_type; scalar_t__ tco; } ;

/* Variables and functions */
#define  AES32 132 
#define  AIO 131 
 int /*<<< orphan*/  HDSPM_TCO1_LTC_Input_valid ; 
 int /*<<< orphan*/  HDSPM_TCO1_TCO_lock ; 
#define  MADI 130 
#define  MADIface 129 
#define  RayDAT 128 
 int FUNC0 (struct hdspm*,int) ; 
 int FUNC1 (struct hdspm*) ; 
 int FUNC2 (struct hdspm*,int) ; 
 int FUNC3 (struct hdspm*) ; 
 int FUNC4 (struct hdspm*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hdspm*) ; 
 int FUNC6 (struct hdspm*) ; 
 struct hdspm* FUNC7 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC8(struct snd_kcontrol *kcontrol,
				    struct snd_ctl_elem_value *ucontrol)
{
	struct hdspm *hdspm = FUNC7(kcontrol);
	int val = -1;

	switch (hdspm->io_type) {
	case RayDAT:
		switch (kcontrol->private_value) {
		case 0: /* WC */
			val = FUNC6(hdspm); break;
		case 7: /* TCO */
			val = FUNC5(hdspm); break;
		case 8: /* SYNC IN */
			val = FUNC3(hdspm); break;
		default:
			val = FUNC2(hdspm,
					kcontrol->private_value-1);
		}
		break;

	case AIO:
		switch (kcontrol->private_value) {
		case 0: /* WC */
			val = FUNC6(hdspm); break;
		case 4: /* TCO */
			val = FUNC5(hdspm); break;
		case 5: /* SYNC IN */
			val = FUNC3(hdspm); break;
		default:
			val = FUNC2(hdspm,
					kcontrol->private_value-1);
		}
		break;

	case MADI:
		switch (kcontrol->private_value) {
		case 0: /* WC */
			val = FUNC6(hdspm); break;
		case 1: /* MADI */
			val = FUNC1(hdspm); break;
		case 2: /* TCO */
			val = FUNC5(hdspm); break;
		case 3: /* SYNC_IN */
			val = FUNC3(hdspm); break;
		}
		break;

	case MADIface:
		val = FUNC1(hdspm); /* MADI */
		break;

	case AES32:
		switch (kcontrol->private_value) {
		case 0: /* WC */
			val = FUNC6(hdspm); break;
		case 9: /* TCO */
			val = FUNC5(hdspm); break;
		case 10 /* SYNC IN */:
			val = FUNC3(hdspm); break;
		default: /* AES1 to AES8 */
			 val = FUNC0(hdspm,
					 kcontrol->private_value-1);
		}
		break;

	}

	if (hdspm->tco) {
		switch (kcontrol->private_value) {
		case 11:
			/* Check TCO for lock state of its current input */
			val = FUNC4(hdspm, HDSPM_TCO1_TCO_lock);
			break;
		case 12:
			/* Check TCO for valid time code on LTC input. */
			val = FUNC4(hdspm,
				HDSPM_TCO1_LTC_Input_valid);
			break;
		default:
			break;
		}
	}

	if (-1 == val)
		val = 3;

	ucontrol->value.enumerated.item[0] = val;
	return 0;
}