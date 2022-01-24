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
struct iio_event_data {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  id; } ;
typedef  enum iio_modifier { ____Placeholder_iio_modifier } iio_modifier ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;
typedef  enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int IIO_EV_DIR_NONE ; 
 int IIO_NO_MOD ; 
 int /*<<< orphan*/  FUNC7 (struct iio_event_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * iio_chan_type_name_spec ; 
 char** iio_ev_dir_text ; 
 char** iio_ev_type_text ; 
 char** iio_modifier_names ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC10(struct iio_event_data *event)
{
	enum iio_chan_type type = FUNC2(event->id);
	enum iio_modifier mod = FUNC5(event->id);
	enum iio_event_type ev_type = FUNC6(event->id);
	enum iio_event_direction dir = FUNC4(event->id);
	int chan = FUNC0(event->id);
	int chan2 = FUNC1(event->id);
	bool diff = FUNC3(event->id);

	if (!FUNC7(event)) {
		FUNC8(stderr, "Unknown event: time: %d, id: %x\n",
			event->timestamp, event->id);

		return;
	}

	FUNC9("Event: time: %lld, type: %s", event->timestamp,
	       iio_chan_type_name_spec[type]);

	if (mod != IIO_NO_MOD)
		FUNC9("(%s)", iio_modifier_names[mod]);

	if (chan >= 0) {
		FUNC9(", channel: %d", chan);
		if (diff && chan2 >= 0)
			FUNC9("-%d", chan2);
	}

	FUNC9(", evtype: %s", iio_ev_type_text[ev_type]);

	if (dir != IIO_EV_DIR_NONE)
		FUNC9(", direction: %s", iio_ev_dir_text[dir]);

	FUNC9("\n");
}