#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct echoaudio {TYPE_1__* comm_page; } ;
struct TYPE_2__ {long* vu_meter; long* peak_meter; } ;

/* Variables and functions */
 int E3G_MAX_OUTPUTS ; 
 int FUNC0 (struct echoaudio*) ; 
 int FUNC1 (struct echoaudio*) ; 
 int FUNC2 (struct echoaudio*) ; 

__attribute__((used)) static void FUNC3(struct echoaudio *chip, long *meters)
{
	int i, m, n;

	m = 0;
	n = 0;
	for (i = 0; i < FUNC1(chip); i++, m++) {
		meters[n++] = chip->comm_page->vu_meter[m];
		meters[n++] = chip->comm_page->peak_meter[m];
	}
	for (; n < 32; n++)
		meters[n] = 0;

#ifdef ECHOCARD_ECHO3G
	m = E3G_MAX_OUTPUTS;	/* Skip unused meters */
#endif

	for (i = 0; i < FUNC0(chip); i++, m++) {
		meters[n++] = chip->comm_page->vu_meter[m];
		meters[n++] = chip->comm_page->peak_meter[m];
	}
	for (; n < 64; n++)
		meters[n] = 0;

#ifdef ECHOCARD_HAS_VMIXER
	for (i = 0; i < num_pipes_out(chip); i++, m++) {
		meters[n++] = chip->comm_page->vu_meter[m];
		meters[n++] = chip->comm_page->peak_meter[m];
	}
#endif
	for (; n < 96; n++)
		meters[n] = 0;
}