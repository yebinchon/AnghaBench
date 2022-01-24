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
struct TYPE_4__ {int /*<<< orphan*/ * callback_data; } ;
struct snd_ff {TYPE_2__ async_handler; TYPE_1__* spec; int /*<<< orphan*/  unit; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_3__ {int /*<<< orphan*/  midi_high_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCODE_WRITE_QUADLET_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void FUNC3(struct snd_ff *ff)
{
	__le32 reg;

	if (ff->async_handler.callback_data == NULL)
		return;
	ff->async_handler.callback_data = NULL;

	/* Release higher 4 bytes of address. */
	reg = FUNC0(0x00000000);
	FUNC2(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
			   ff->spec->midi_high_addr,
			   &reg, sizeof(reg), 0);

	FUNC1(&ff->async_handler);
}