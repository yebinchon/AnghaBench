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
struct hdspm {int /*<<< orphan*/  lock; int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDSPM_LatencyMask ; 
 int /*<<< orphan*/  HDSPM_controlRegister ; 
 int /*<<< orphan*/  FUNC0 (struct hdspm*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct hdspm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hdspm *s, unsigned int frames)
{
	int n;

	FUNC3(&s->lock);

	if (32 == frames) {
		/* Special case for new RME cards like RayDAT/AIO which
		 * support period sizes of 32 samples. Since latency is
		 * encoded in the three bits of HDSP_LatencyMask, we can only
		 * have values from 0 .. 7. While 0 still means 64 samples and
		 * 6 represents 4096 samples on all cards, 7 represents 8192
		 * on older cards and 32 samples on new cards.
		 *
		 * In other words, period size in samples is calculated by
		 * 2^(n+6) with n ranging from 0 .. 7.
		 */
		n = 7;
	} else {
		frames >>= 7;
		n = 0;
		while (frames) {
			n++;
			frames >>= 1;
		}
	}

	s->control_register &= ~HDSPM_LatencyMask;
	s->control_register |= FUNC1(n);

	FUNC2(s, HDSPM_controlRegister, s->control_register);

	FUNC0(s);

	FUNC4(&s->lock);

	return 0;
}