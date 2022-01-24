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
struct snd_rme9652 {int running; int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  RME9652_control_register ; 
 int /*<<< orphan*/  RME9652_inp ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_rme9652*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_rme9652 *rme9652, int in)
{
	int restart = 0;

	rme9652->control_register &= ~RME9652_inp;
	rme9652->control_register |= FUNC0(in);

	if ((restart = rme9652->running)) {
		FUNC2(rme9652);
	}

	FUNC3(rme9652, RME9652_control_register, rme9652->control_register);

	if (restart) {
		FUNC1(rme9652);
	}

	return 0;
}