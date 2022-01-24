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
struct fm801 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_RESET ; 
 int /*<<< orphan*/  CODEC_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct fm801*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fm801*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct fm801*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct fm801 *chip)
{
	/* codec cold reset + AC'97 warm reset */
	FUNC1(chip, CODEC_CTRL, (1 << 5) | (1 << 6));
	FUNC0(chip, CODEC_CTRL); /* flush posting data */
	FUNC3(100);
	FUNC1(chip, CODEC_CTRL, 0);

	return FUNC4(chip, 0, AC97_RESET, FUNC2(750));
}