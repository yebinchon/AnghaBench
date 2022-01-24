#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int freemem; scalar_t__ interrupts_are_midi; int /*<<< orphan*/  control_port; scalar_t__ debug; int /*<<< orphan*/  irq_ok; int /*<<< orphan*/  data_port; scalar_t__ israw; } ;
typedef  TYPE_1__ snd_wavefront_t ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  WFC_NOOP ; 
 int /*<<< orphan*/  WFC_SET_NVOICES ; 
 int /*<<< orphan*/  ospath ; 
 int osrun_time ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC9 (snd_wavefront_t *dev)

{
	char voices[1];

	if (FUNC6 (dev)) {
		FUNC1 ("hw reset failed.\n");
		goto gone_bad;
	}

	if (dev->israw) {
		if (FUNC3 (dev, ospath)) {
			goto gone_bad;
		}

		dev->israw = 0;

		/* Wait for the OS to get running. The protocol for
		   this is non-obvious, and was determined by
		   using port-IO tracing in DOSemu and some
		   experimentation here.
		   
		   Rather than using timed waits, use interrupts creatively.
		*/

		FUNC7 (dev, WFC_NOOP,
						  dev->data_port,
						  (osrun_time*HZ));

		if (!dev->irq_ok) {
			FUNC1 ("no post-OS interrupt.\n");
			goto gone_bad;
		}
		
		/* Now, do it again ! */
		
		FUNC7 (dev, WFC_NOOP,
						  dev->data_port, (10*HZ));
		
		if (!dev->irq_ok) {
			FUNC1 ("no post-OS interrupt(2).\n");
			goto gone_bad;
		}

		/* OK, no (RX/TX) interrupts any more, but leave mute
		   in effect. 
		*/
		
		FUNC0 (0x80|0x40, dev->control_port); 
	}

	/* SETUPSND.EXE asks for sample memory config here, but since i
	   have no idea how to interpret the result, we'll forget
	   about it.
	*/
	
	if ((dev->freemem = FUNC4 (dev)) < 0) {
		goto gone_bad;
	}
		
	FUNC1 ("available DRAM %dk\n", dev->freemem / 1024);

	if (FUNC8 (dev, 0xf0) ||
	    FUNC8 (dev, 1) ||
	    (FUNC5 (dev) < 0)) {
		dev->debug = 0;
		FUNC1 ("MPU emulation mode not set.\n");
		goto gone_bad;
	}

	voices[0] = 32;

	if (FUNC2 (dev, WFC_SET_NVOICES, NULL, voices)) {
		FUNC1 ("cannot set number of voices to 32.\n");
		goto gone_bad;
	}


	return 0;

 gone_bad:
	/* reset that sucker so that it doesn't bother us. */

	FUNC0 (0x0, dev->control_port);
	dev->interrupts_are_midi = 0;
	return 1;
}