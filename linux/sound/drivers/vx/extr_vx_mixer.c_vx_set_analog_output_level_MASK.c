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
struct vx_core {TYPE_2__* ops; TYPE_1__* hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* akm_write ) (struct vx_core*,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_3__ {int output_level_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  XX_CODEC_LEVEL_LEFT_REGISTER ; 
 int /*<<< orphan*/  XX_CODEC_LEVEL_RIGHT_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (struct vx_core*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vx_core*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vx_core*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct vx_core *chip, int codec, int left, int right)
{
	left  = chip->hw->output_level_max - left;
	right = chip->hw->output_level_max - right;

	if (chip->ops->akm_write) {
		chip->ops->akm_write(chip, XX_CODEC_LEVEL_LEFT_REGISTER, left);
		chip->ops->akm_write(chip, XX_CODEC_LEVEL_RIGHT_REGISTER, right);
	} else {
		/* convert to attenuation level: 0 = 0dB (max), 0xe3 = -113.5 dB (min) */
		FUNC2(chip, codec, XX_CODEC_LEVEL_LEFT_REGISTER, left);
		FUNC2(chip, codec, XX_CODEC_LEVEL_RIGHT_REGISTER, right);
	}
}