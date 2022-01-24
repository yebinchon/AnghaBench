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
struct virtio_chan {int inuse; } ;
struct p9_client {struct virtio_chan* trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  virtio_9p_lock ; 

__attribute__((used)) static void FUNC2(struct p9_client *client)
{
	struct virtio_chan *chan = client->trans;

	FUNC0(&virtio_9p_lock);
	if (chan)
		chan->inuse = false;
	FUNC1(&virtio_9p_lock);
}