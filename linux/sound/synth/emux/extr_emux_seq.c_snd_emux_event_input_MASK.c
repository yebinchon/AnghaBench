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
struct snd_seq_event {int dummy; } ;
struct snd_emux_port {int /*<<< orphan*/  chset; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  emux_ops ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct snd_seq_event*,int /*<<< orphan*/ *) ; 

int
FUNC2(struct snd_seq_event *ev, int direct, void *private_data,
		     int atomic, int hop)
{
	struct snd_emux_port *port;

	port = private_data;
	if (FUNC0(!port || !ev))
		return -EINVAL;

	FUNC1(&emux_ops, ev, &port->chset);

	return 0;
}