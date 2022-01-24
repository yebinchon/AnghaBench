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
struct hdac_ext_link {int ref_count; int /*<<< orphan*/  ml_addr; } ;
struct hdac_bus {int cmd_dma_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  codec_mask; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AZX_REG_ML_LOSIDV ; 
 int /*<<< orphan*/  ML_LOSIDV_STREAM_MASK ; 
 int /*<<< orphan*/  STATESTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct hdac_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hdac_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct hdac_ext_link*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

int FUNC9(struct hdac_bus *bus,
				struct hdac_ext_link *link)
{
	int ret = 0;

	FUNC1(&bus->lock);

	/*
	 * if we move from 0 to 1, count will be 1 so power up this link
	 * as well, also check the dma status and trigger that
	 */
	if (++link->ref_count == 1) {
		if (!bus->cmd_dma_state) {
			FUNC3(bus);
			bus->cmd_dma_state = true;
		}

		ret = FUNC6(link);

		/*
		 * clear the register to invalidate all the output streams
		 */
		FUNC7(link->ml_addr, AZX_REG_ML_LOSIDV,
				 ML_LOSIDV_STREAM_MASK, 0);
		/*
		 *  wait for 521usec for codec to report status
		 *  HDA spec section 4.3 - Codec Discovery
		 */
		FUNC8(521);
		bus->codec_mask = FUNC4(bus, STATESTS);
		FUNC0(bus->dev, "codec_mask = 0x%lx\n", bus->codec_mask);
		FUNC5(bus, STATESTS, bus->codec_mask);
	}

	FUNC2(&bus->lock);
	return ret;
}