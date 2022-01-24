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
typedef  size_t u32 ;
struct snd_dg00x {int /*<<< orphan*/  unit; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 size_t FUNC0 (unsigned int*) ; 
 scalar_t__ DG00X_ADDR_BASE ; 
 scalar_t__ DG00X_OFFSET_LOCAL_RATE ; 
 int EIO ; 
 int /*<<< orphan*/  TCODE_READ_QUADLET_REQUEST ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int* snd_dg00x_stream_rates ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct snd_dg00x *dg00x, unsigned int *rate)
{
	u32 data;
	__be32 reg;
	int err;

	err = FUNC2(dg00x->unit, TCODE_READ_QUADLET_REQUEST,
				 DG00X_ADDR_BASE + DG00X_OFFSET_LOCAL_RATE,
				 &reg, sizeof(reg), 0);
	if (err < 0)
		return err;

	data = FUNC1(reg) & 0x0f;
	if (data < FUNC0(snd_dg00x_stream_rates))
		*rate = snd_dg00x_stream_rates[data];
	else
		err = -EIO;

	return err;
}