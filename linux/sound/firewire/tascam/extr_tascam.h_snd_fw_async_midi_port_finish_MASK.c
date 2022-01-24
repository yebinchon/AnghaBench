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
struct snd_fw_async_midi_port {int error; int /*<<< orphan*/  work; int /*<<< orphan*/ * substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC1(struct snd_fw_async_midi_port *port)
{
	port->substream = NULL;
	FUNC0(&port->work);
	port->error = false;
}