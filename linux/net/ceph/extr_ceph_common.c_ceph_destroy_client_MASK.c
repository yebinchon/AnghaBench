#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  stopping; } ;
struct ceph_client {int /*<<< orphan*/  options; TYPE_1__ msgr; int /*<<< orphan*/  monc; int /*<<< orphan*/  osdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct ceph_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_client*) ; 

void FUNC8(struct ceph_client *client)
{
	FUNC6("destroy_client %p\n", client);

	FUNC0(&client->msgr.stopping, 1);

	/* unmount */
	FUNC5(&client->osdc);
	FUNC4(&client->monc);
	FUNC3(&client->msgr);

	FUNC1(client);

	FUNC2(client->options);

	FUNC7(client);
	FUNC6("destroy_client %p done\n", client);
}