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
struct hdac_bus_ops {int dummy; } ;
struct hdac_bus {int irq; int /*<<< orphan*/  hlink_list; int /*<<< orphan*/  lock; int /*<<< orphan*/  cmd_mutex; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  unsol_work; int /*<<< orphan*/  codec_list; int /*<<< orphan*/  stream_list; int /*<<< orphan*/  dma_type; struct hdac_bus_ops const* ops; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 struct hdac_bus_ops const default_ops ; 
 int /*<<< orphan*/  FUNC2 (struct hdac_bus*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_hdac_bus_process_unsol_events ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct hdac_bus *bus, struct device *dev,
		      const struct hdac_bus_ops *ops)
{
	FUNC2(bus, 0, sizeof(*bus));
	bus->dev = dev;
	if (ops)
		bus->ops = ops;
	else
		bus->ops = &default_ops;
	bus->dma_type = SNDRV_DMA_TYPE_DEV;
	FUNC0(&bus->stream_list);
	FUNC0(&bus->codec_list);
	FUNC1(&bus->unsol_work, snd_hdac_bus_process_unsol_events);
	FUNC4(&bus->reg_lock);
	FUNC3(&bus->cmd_mutex);
	FUNC3(&bus->lock);
	FUNC0(&bus->hlink_list);
	bus->irq = -1;
	return 0;
}