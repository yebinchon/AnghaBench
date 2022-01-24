#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hdspm_midi {TYPE_1__* hdspm; int /*<<< orphan*/  ie; int /*<<< orphan*/  lock; scalar_t__ pending; int /*<<< orphan*/  id; scalar_t__ input; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDSPM_controlRegister ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hdspm_midi*) ; 
 unsigned char FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7 (struct hdspm_midi *hmidi)
{
	unsigned char buf[128]; /* this buffer is designed to match the MIDI
				 * input FIFO size
				 */
	unsigned long flags;
	int n_pending;
	int i;

	FUNC5 (&hmidi->lock, flags);
	n_pending = FUNC1 (hmidi->hdspm, hmidi->id);
	if (n_pending > 0) {
		if (hmidi->input) {
			if (n_pending > (int)sizeof (buf))
				n_pending = sizeof (buf);
			for (i = 0; i < n_pending; ++i)
				buf[i] = FUNC3 (hmidi->hdspm,
								   hmidi->id);
			if (n_pending)
				FUNC4 (hmidi->input, buf,
						     n_pending);
		} else {
			/* flush the MIDI input FIFO */
			while (n_pending--)
				FUNC3 (hmidi->hdspm,
							  hmidi->id);
		}
	}
	hmidi->pending = 0;
	FUNC6(&hmidi->lock, flags);

	FUNC5(&hmidi->hdspm->lock, flags);
	hmidi->hdspm->control_register |= hmidi->ie;
	FUNC0(hmidi->hdspm, HDSPM_controlRegister,
		    hmidi->hdspm->control_register);
	FUNC6(&hmidi->hdspm->lock, flags);

	return FUNC2 (hmidi);
}