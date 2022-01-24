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
struct hdac_stream {int /*<<< orphan*/ * substream; scalar_t__ running; scalar_t__ opened; struct hdac_bus* bus; } ;
struct hdac_bus {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct hdac_stream *azx_dev)
{
	struct hdac_bus *bus = azx_dev->bus;

	FUNC0(&bus->reg_lock);
	azx_dev->opened = 0;
	azx_dev->running = 0;
	azx_dev->substream = NULL;
	FUNC1(&bus->reg_lock);
}