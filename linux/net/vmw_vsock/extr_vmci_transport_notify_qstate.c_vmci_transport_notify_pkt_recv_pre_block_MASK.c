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
struct vmci_transport_recv_notify_data {int notify_on_block; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 

__attribute__((used)) static int
FUNC2(
				struct sock *sk,
				size_t target,
				struct vmci_transport_recv_notify_data *data)
{
	int err = 0;

	FUNC1(sk);

	if (data->notify_on_block) {
		err = FUNC0(sk);
		if (err < 0)
			return err;
		data->notify_on_block = false;
	}

	return err;
}