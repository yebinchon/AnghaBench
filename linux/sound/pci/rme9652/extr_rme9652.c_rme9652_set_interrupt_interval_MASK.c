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
struct snd_rme9652 {int running; int /*<<< orphan*/  lock; int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  RME9652_control_register ; 
 int /*<<< orphan*/  RME9652_latency ; 
 int /*<<< orphan*/  FUNC0 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_rme9652*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_rme9652 *s,
					  unsigned int frames)
{
	int restart = 0;
	int n;

	FUNC5(&s->lock);

	if ((restart = s->running)) {
		FUNC3(s);
	}

	frames >>= 7;
	n = 0;
	while (frames) {
		n++;
		frames >>= 1;
	}

	s->control_register &= ~RME9652_latency;
	s->control_register |= FUNC1(n);

	FUNC4(s, RME9652_control_register, s->control_register);

	FUNC0(s);

	if (restart)
		FUNC2(s);

	FUNC6(&s->lock);

	return 0;
}