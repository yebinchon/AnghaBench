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
struct vsock_sock {struct hvsock* trans; } ;
struct vmbus_channel {int dummy; } ;
struct hvsock {struct vmbus_channel* chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hvsock*) ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_channel*) ; 

__attribute__((used)) static void FUNC2(struct vsock_sock *vsk)
{
	struct hvsock *hvs = vsk->trans;
	struct vmbus_channel *chan = hvs->chan;

	if (chan)
		FUNC1(chan);

	FUNC0(hvs);
}