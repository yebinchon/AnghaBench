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
struct snd_seq_prioq {scalar_t__ cells; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_seq_prioq*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_seq_prioq*,int /*<<< orphan*/ *) ; 

void FUNC4(struct snd_seq_prioq **fifo)
{
	struct snd_seq_prioq *f = *fifo;
	*fifo = NULL;

	if (f == NULL) {
		FUNC1("ALSA: seq: snd_seq_prioq_delete() called with NULL prioq\n");
		return;
	}

	/* release resources...*/
	/*....................*/
	
	if (f->cells > 0) {
		/* drain prioQ */
		while (f->cells > 0)
			FUNC2(FUNC3(f, NULL));
	}
	
	FUNC0(f);
}