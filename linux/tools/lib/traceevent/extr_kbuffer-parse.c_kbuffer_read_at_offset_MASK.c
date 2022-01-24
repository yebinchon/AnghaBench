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
struct kbuffer {int start; int curr; int /*<<< orphan*/  subbuffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kbuffer*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct kbuffer*,unsigned long long*) ; 
 void* FUNC2 (struct kbuffer*,unsigned long long*) ; 

void *FUNC3(struct kbuffer *kbuf, int offset,
			     unsigned long long *ts)
{
	void *data;

	if (offset < kbuf->start)
		offset = 0;
	else
		offset -= kbuf->start;

	/* Reset the buffer */
	FUNC0(kbuf, kbuf->subbuffer);
	data = FUNC2(kbuf, ts);

	while (kbuf->curr < offset) {
		data = FUNC1(kbuf, ts);
		if (!data)
			break;
	}

	return data;
}