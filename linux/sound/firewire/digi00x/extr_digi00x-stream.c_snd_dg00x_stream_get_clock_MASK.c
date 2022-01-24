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
struct snd_dg00x {int /*<<< orphan*/  unit; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  enum snd_dg00x_clock { ____Placeholder_snd_dg00x_clock } snd_dg00x_clock ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ DG00X_ADDR_BASE ; 
 scalar_t__ DG00X_OFFSET_CLOCK_SOURCE ; 
 int EIO ; 
 int SND_DG00X_CLOCK_COUNT ; 
 int /*<<< orphan*/  TCODE_READ_QUADLET_REQUEST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct snd_dg00x *dg00x,
			       enum snd_dg00x_clock *clock)
{
	__be32 reg;
	int err;

	err = FUNC1(dg00x->unit, TCODE_READ_QUADLET_REQUEST,
				 DG00X_ADDR_BASE + DG00X_OFFSET_CLOCK_SOURCE,
				 &reg, sizeof(reg), 0);
	if (err < 0)
		return err;

	*clock = FUNC0(reg) & 0x0f;
	if (*clock >= SND_DG00X_CLOCK_COUNT)
		err = -EIO;

	return err;
}