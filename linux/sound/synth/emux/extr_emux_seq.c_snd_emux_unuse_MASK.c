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
struct snd_seq_port_subscribe {int dummy; } ;
struct snd_emux_port {struct snd_emux* emu; } ;
struct snd_emux {int /*<<< orphan*/  register_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_emux*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emux_port*) ; 

__attribute__((used)) static int
FUNC5(void *private_data, struct snd_seq_port_subscribe *info)
{
	struct snd_emux_port *p;
	struct snd_emux *emu;

	p = private_data;
	if (FUNC3(!p))
		return -EINVAL;
	emu = p->emu;
	if (FUNC3(!emu))
		return -EINVAL;

	FUNC1(&emu->register_mutex);
	FUNC4(p);
	FUNC0(emu);
	FUNC2(&emu->register_mutex);
	return 0;
}