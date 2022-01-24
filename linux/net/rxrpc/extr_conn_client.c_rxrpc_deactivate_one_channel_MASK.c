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
struct rxrpc_connection {int active_chans; struct rxrpc_channel* channels; } ;
struct rxrpc_channel {int /*<<< orphan*/  call; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct rxrpc_connection *conn,
					 unsigned int channel)
{
	struct rxrpc_channel *chan = &conn->channels[channel];

	FUNC0(chan->call, NULL);
	conn->active_chans &= ~(1 << channel);
}