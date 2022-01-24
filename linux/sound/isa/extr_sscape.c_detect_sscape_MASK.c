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
struct soundscape {scalar_t__ ic_type; scalar_t__ type; int /*<<< orphan*/  lock; int /*<<< orphan*/  io_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  GA_HMCTL_REG ; 
 long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IC_ODIE ; 
 scalar_t__ IC_OPUS ; 
 scalar_t__ MEDIA_FX ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSCAPE_VIVO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC11(struct soundscape *s, long wss_io)
{
	unsigned long flags;
	unsigned d;
	int retval = 0;

	FUNC7(&s->lock, flags);

	/*
	 * The following code is lifted from the original OSS driver,
	 * and as I don't have a datasheet I cannot really comment
	 * on what it is doing...
	 */
	if ((FUNC4(FUNC0(s->io_base)) & 0x78) != 0)
		goto _done;

	d = FUNC4(FUNC1(s->io_base)) & 0xf0;
	if ((d & 0x80) != 0)
		goto _done;

	if (d == 0)
		s->ic_type = IC_ODIE;
	else if ((d & 0x60) != 0)
		s->ic_type = IC_OPUS;
	else
		goto _done;

	FUNC6(0xfa, FUNC1(s->io_base));
	if ((FUNC4(FUNC1(s->io_base)) & 0x9f) != 0x0a)
		goto _done;

	FUNC6(0xfe, FUNC1(s->io_base));
	if ((FUNC4(FUNC1(s->io_base)) & 0x9f) != 0x0e)
		goto _done;

	FUNC6(0xfe, FUNC1(s->io_base));
	d = FUNC4(FUNC2(s->io_base));
	if (s->type != SSCAPE_VIVO && (d & 0x9f) != 0x0e)
		goto _done;

	if (s->ic_type == IC_OPUS)
		FUNC3(s->io_base);

	if (s->type == SSCAPE_VIVO)
		wss_io += 4;

	d  = FUNC9(s->io_base, GA_HMCTL_REG);
	FUNC10(s->io_base, GA_HMCTL_REG, d | 0xc0);

	/* wait for WSS codec */
	for (d = 0; d < 500; d++) {
		if ((FUNC4(wss_io) & 0x80) == 0)
			break;
		FUNC8(&s->lock, flags);
		FUNC5(1);
		FUNC7(&s->lock, flags);
	}

	if ((FUNC4(wss_io) & 0x80) != 0)
		goto _done;

	if (FUNC4(wss_io + 2) == 0xff)
		goto _done;

	d  = FUNC9(s->io_base, GA_HMCTL_REG) & 0x3f;
	FUNC10(s->io_base, GA_HMCTL_REG, d);

	if ((FUNC4(wss_io) & 0x80) != 0)
		s->type = MEDIA_FX;

	d = FUNC9(s->io_base, GA_HMCTL_REG);
	FUNC10(s->io_base, GA_HMCTL_REG, d | 0xc0);
	/* wait for WSS codec */
	for (d = 0; d < 500; d++) {
		if ((FUNC4(wss_io) & 0x80) == 0)
			break;
		FUNC8(&s->lock, flags);
		FUNC5(1);
		FUNC7(&s->lock, flags);
	}

	/*
	 * SoundScape successfully detected!
	 */
	retval = 1;

_done:
	FUNC8(&s->lock, flags);
	return retval;
}