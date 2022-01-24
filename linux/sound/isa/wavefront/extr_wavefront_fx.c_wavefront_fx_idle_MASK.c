#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  fx_status; } ;
typedef  TYPE_1__ snd_wavefront_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2 (snd_wavefront_t *dev)

{
	int i;
	unsigned int x = 0x80;

	for (i = 0; i < 1000; i++) {
		x = FUNC0 (dev->fx_status);
		if ((x & 0x80) == 0) {
			break;
		}
	}

	if (x & 0x80) {
		FUNC1 ("FX device never idle.\n");
		return 0;
	}

	return (1);
}