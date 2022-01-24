#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int* res; int /*<<< orphan*/ * cmds; } ;
struct hdac_bus {int polling_mode; int poll_count; int /*<<< orphan*/ * last_cmd; int /*<<< orphan*/  reg_lock; TYPE_1__ rirb; } ;
struct hda_bus {int response_reset; int /*<<< orphan*/  in_reset; scalar_t__ allow_bus_reset; scalar_t__ no_response_fallback; scalar_t__ needs_damn_long_delay; } ;
struct azx {int single_cmd; TYPE_3__* card; int /*<<< orphan*/  fallback_to_single_cmd; scalar_t__ probing; TYPE_2__* ops; scalar_t__ msi; struct hda_bus bus; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {scalar_t__ (* disable_msi_reset_irq ) (struct azx*) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 unsigned long LOOP_COUNT_MAX ; 
 struct azx* FUNC0 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC10 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct azx*) ; 
 scalar_t__ FUNC14 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct hdac_bus *bus, unsigned int addr,
				 unsigned int *res)
{
	struct azx *chip = FUNC0(bus);
	struct hda_bus *hbus = &chip->bus;
	unsigned long timeout;
	unsigned long loopcounter;
	int do_poll = 0;
	bool warned = false;

 again:
	timeout = jiffies + FUNC7(1000);

	for (loopcounter = 0;; loopcounter++) {
		FUNC11(&bus->reg_lock);
		if (bus->polling_mode || do_poll)
			FUNC10(bus);
		if (!bus->rirb.cmds[addr]) {
			if (!do_poll)
				bus->poll_count = 0;
			if (res)
				*res = bus->rirb.res[addr]; /* the last value */
			FUNC12(&bus->reg_lock);
			return 0;
		}
		FUNC12(&bus->reg_lock);
		if (FUNC14(jiffies, timeout))
			break;
#define LOOP_COUNT_MAX	3000
		if (hbus->needs_damn_long_delay ||
		    loopcounter > LOOP_COUNT_MAX) {
			if (loopcounter > LOOP_COUNT_MAX && !warned) {
				FUNC4(chip->card->dev,
						    "too slow response, last cmd=%#08x\n",
						    bus->last_cmd[addr]);
				warned = true;
			}
			FUNC8(2); /* temporary workaround */
		} else {
			FUNC15(10);
			FUNC1();
		}
	}

	if (hbus->no_response_fallback)
		return -EIO;

	if (!bus->polling_mode && bus->poll_count < 2) {
		FUNC3(chip->card->dev,
			"azx_get_response timeout, polling the codec once: last cmd=0x%08x\n",
			bus->last_cmd[addr]);
		do_poll = 1;
		bus->poll_count++;
		goto again;
	}


	if (!bus->polling_mode) {
		FUNC6(chip->card->dev,
			 "azx_get_response timeout, switching to polling mode: last cmd=0x%08x\n",
			 bus->last_cmd[addr]);
		bus->polling_mode = 1;
		goto again;
	}

	if (chip->msi) {
		FUNC6(chip->card->dev,
			 "No response from codec, disabling MSI: last cmd=0x%08x\n",
			 bus->last_cmd[addr]);
		if (chip->ops->disable_msi_reset_irq &&
		    chip->ops->disable_msi_reset_irq(chip) < 0)
			return -EIO;
		goto again;
	}

	if (chip->probing) {
		/* If this critical timeout happens during the codec probing
		 * phase, this is likely an access to a non-existing codec
		 * slot.  Better to return an error and reset the system.
		 */
		return -EIO;
	}

	/* no fallback mechanism? */
	if (!chip->fallback_to_single_cmd)
		return -EIO;

	/* a fatal communication error; need either to reset or to fallback
	 * to the single_cmd mode
	 */
	if (hbus->allow_bus_reset && !hbus->response_reset && !hbus->in_reset) {
		hbus->response_reset = 1;
		FUNC5(chip->card->dev,
			"No response from codec, resetting bus: last cmd=0x%08x\n",
			bus->last_cmd[addr]);
		return -EAGAIN; /* give a chance to retry */
	}

	FUNC2(chip->card->dev,
		"azx_get_response timeout, switching to single_cmd mode: last cmd=0x%08x\n",
		bus->last_cmd[addr]);
	chip->single_cmd = 1;
	hbus->response_reset = 0;
	FUNC9(bus);
	return -EIO;
}