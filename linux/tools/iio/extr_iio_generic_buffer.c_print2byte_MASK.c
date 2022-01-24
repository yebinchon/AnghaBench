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
typedef  int uint16_t ;
struct iio_channel_info {int shift; int mask; int bits_used; float offset; float scale; scalar_t__ is_signed; scalar_t__ be; } ;
typedef  int int16_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,float) ; 

void FUNC3(uint16_t input, struct iio_channel_info *info)
{
	/* First swap if incorrect endian */
	if (info->be)
		input = FUNC0(input);
	else
		input = FUNC1(input);

	/*
	 * Shift before conversion to avoid sign extension
	 * of left aligned data
	 */
	input >>= info->shift;
	input &= info->mask;
	if (info->is_signed) {
		int16_t val = (int16_t)(input << (16 - info->bits_used)) >>
			      (16 - info->bits_used);
		FUNC2("%05f ", ((float)val + info->offset) * info->scale);
	} else {
		FUNC2("%05f ", ((float)input + info->offset) * info->scale);
	}
}