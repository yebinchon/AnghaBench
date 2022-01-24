#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sg_entry {void* size; void* addr; } ;
struct echoaudio {TYPE_1__* card; } ;
struct TYPE_4__ {scalar_t__ area; } ;
struct audiopipe {int sglist_head; TYPE_2__ sgpage; } ;
typedef  size_t dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MAX_SGLIST_ENTRIES ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct echoaudio *chip, struct audiopipe *pipe,
				dma_addr_t address, size_t length)
{
	int head = pipe->sglist_head;
	struct sg_entry *list = (struct sg_entry *)pipe->sgpage.area;

	if (head < MAX_SGLIST_ENTRIES - 1) {
		list[head].addr = FUNC0(address);
		list[head].size = FUNC0(length);
		pipe->sglist_head++;
	} else {
		FUNC1(chip->card->dev, "SGlist: too many fragments\n");
		return -ENOMEM;
	}
	return 0;
}