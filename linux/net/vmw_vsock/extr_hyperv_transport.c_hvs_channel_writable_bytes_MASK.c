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
typedef  scalar_t__ u32 ;
struct vmbus_channel {int /*<<< orphan*/  outbound; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (size_t,int) ; 

__attribute__((used)) static size_t FUNC3(struct vmbus_channel *chan)
{
	u32 writeable = FUNC1(&chan->outbound);
	size_t ret;

	/* The ringbuffer mustn't be 100% full, and we should reserve a
	 * zero-length-payload packet for the FIN: see hv_ringbuffer_write()
	 * and hvs_shutdown().
	 */
	if (writeable <= FUNC0(1) + FUNC0(0))
		return 0;

	ret = writeable - FUNC0(1) - FUNC0(0);

	return FUNC2(ret, 8);
}