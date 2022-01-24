#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_seq_oss_arg {struct snd_emux_port* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; int /*<<< orphan*/  client; } ;
struct snd_emux_port {TYPE_1__ chset; struct snd_emux* emu; } ;
struct snd_emux {int /*<<< orphan*/  sflist; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emux*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emux_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct snd_seq_oss_arg *arg)
{
	struct snd_emux *emu;
	struct snd_emux_port *p;

	if (FUNC1(!arg))
		return -ENXIO;
	p = arg->private_data;
	if (FUNC1(!p))
		return -ENXIO;

	emu = p->emu;
	if (FUNC1(!emu))
		return -ENXIO;

	FUNC3(p);
	FUNC5(emu->sflist, FUNC0(p->chset.port));
	FUNC4(p->chset.client, p->chset.port);
	FUNC2(emu);

	return 0;
}