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
struct snd_seq_fifo {scalar_t__ pool; int /*<<< orphan*/  input_sleep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_seq_fifo*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_fifo*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct snd_seq_fifo **fifo)
{
	struct snd_seq_fifo *f;

	if (FUNC1(!fifo))
		return;
	f = *fifo;
	if (FUNC1(!f))
		return;
	*fifo = NULL;

	if (f->pool)
		FUNC5(f->pool);

	FUNC2(f);

	/* wake up clients if any */
	if (FUNC6(&f->input_sleep))
		FUNC7(&f->input_sleep);

	/* release resources...*/
	/*....................*/

	if (f->pool) {
		FUNC4(f->pool);
		FUNC3(&f->pool);
	}
	
	FUNC0(f);
}