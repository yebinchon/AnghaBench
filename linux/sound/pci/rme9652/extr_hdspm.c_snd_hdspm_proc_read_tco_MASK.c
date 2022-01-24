#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned long long u64 ;
typedef  int u32 ;
struct snd_info_entry {struct hdspm* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct hdspm {unsigned int control_register; int io_type; } ;

/* Variables and functions */
#define  AES32 134 
#define  AIO 133 
 unsigned int HDSPM_DoubleSpeed ; 
 unsigned int HDSPM_QuadSpeed ; 
 scalar_t__ HDSPM_RD_PLL_FREQ ; 
 scalar_t__ HDSPM_RD_TCO ; 
#define  HDSPM_TCO1_LTC_Format_LSB 132 
#define  HDSPM_TCO1_LTC_Format_MSB 131 
 int HDSPM_TCO1_LTC_Input_valid ; 
 int HDSPM_TCO1_TCO_lock ; 
 int HDSPM_TCO1_Video_Input_Format_NTSC ; 
 int HDSPM_TCO1_Video_Input_Format_PAL ; 
 int HDSPM_TCO1_set_drop_frame_flag ; 
 scalar_t__ HDSPM_statusRegister ; 
 unsigned int HDSPM_tco_detect ; 
#define  MADI 130 
#define  MADIface 129 
#define  RayDAT 128 
 int FUNC0 (unsigned long long,unsigned int) ; 
 void* FUNC1 (struct hdspm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void
FUNC3(struct snd_info_entry *entry,
					struct snd_info_buffer *buffer)
{
	struct hdspm *hdspm = entry->private_data;
	unsigned int status, control;
	int a, ltc, frames, seconds, minutes, hours;
	unsigned int period;
	u64 freq_const = 0;
	u32 rate;

	FUNC2(buffer, "--- TCO ---\n");

	status = FUNC1(hdspm, HDSPM_statusRegister);
	control = hdspm->control_register;


	if (status & HDSPM_tco_detect) {
		FUNC2(buffer, "TCO module detected.\n");
		a = FUNC1(hdspm, HDSPM_RD_TCO+4);
		if (a & HDSPM_TCO1_LTC_Input_valid) {
			FUNC2(buffer, "  LTC valid, ");
			switch (a & (HDSPM_TCO1_LTC_Format_LSB |
						HDSPM_TCO1_LTC_Format_MSB)) {
			case 0:
				FUNC2(buffer, "24 fps, ");
				break;
			case HDSPM_TCO1_LTC_Format_LSB:
				FUNC2(buffer, "25 fps, ");
				break;
			case HDSPM_TCO1_LTC_Format_MSB:
				FUNC2(buffer, "29.97 fps, ");
				break;
			default:
				FUNC2(buffer, "30 fps, ");
				break;
			}
			if (a & HDSPM_TCO1_set_drop_frame_flag) {
				FUNC2(buffer, "drop frame\n");
			} else {
				FUNC2(buffer, "full frame\n");
			}
		} else {
			FUNC2(buffer, "  no LTC\n");
		}
		if (a & HDSPM_TCO1_Video_Input_Format_NTSC) {
			FUNC2(buffer, "  Video: NTSC\n");
		} else if (a & HDSPM_TCO1_Video_Input_Format_PAL) {
			FUNC2(buffer, "  Video: PAL\n");
		} else {
			FUNC2(buffer, "  No video\n");
		}
		if (a & HDSPM_TCO1_TCO_lock) {
			FUNC2(buffer, "  Sync: lock\n");
		} else {
			FUNC2(buffer, "  Sync: no lock\n");
		}

		switch (hdspm->io_type) {
		case MADI:
		case AES32:
			freq_const = 110069313433624ULL;
			break;
		case RayDAT:
		case AIO:
			freq_const = 104857600000000ULL;
			break;
		case MADIface:
			break; /* no TCO possible */
		}

		period = FUNC1(hdspm, HDSPM_RD_PLL_FREQ);
		FUNC2(buffer, "    period: %u\n", period);


		/* rate = freq_const/period; */
		rate = FUNC0(freq_const, period);

		if (control & HDSPM_QuadSpeed) {
			rate *= 4;
		} else if (control & HDSPM_DoubleSpeed) {
			rate *= 2;
		}

		FUNC2(buffer, "  Frequency: %u Hz\n",
				(unsigned int) rate);

		ltc = FUNC1(hdspm, HDSPM_RD_TCO);
		frames = ltc & 0xF;
		ltc >>= 4;
		frames += (ltc & 0x3) * 10;
		ltc >>= 4;
		seconds = ltc & 0xF;
		ltc >>= 4;
		seconds += (ltc & 0x7) * 10;
		ltc >>= 4;
		minutes = ltc & 0xF;
		ltc >>= 4;
		minutes += (ltc & 0x7) * 10;
		ltc >>= 4;
		hours = ltc & 0xF;
		ltc >>= 4;
		hours += (ltc & 0x3) * 10;
		FUNC2(buffer,
			"  LTC In: %02d:%02d:%02d:%02d\n",
			hours, minutes, seconds, frames);

	} else {
		FUNC2(buffer, "No TCO module detected.\n");
	}
}