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
struct vsock_sock {int /*<<< orphan*/ * trans; } ;
struct TYPE_4__ {int /*<<< orphan*/  elem; TYPE_1__* notify_ops; int /*<<< orphan*/  lock; int /*<<< orphan*/ * sk; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* socket_destruct ) (struct vsock_sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vsock_sock*) ; 
 TYPE_2__* FUNC5 (struct vsock_sock*) ; 
 int /*<<< orphan*/  vmci_transport_cleanup_list ; 
 int /*<<< orphan*/  vmci_transport_cleanup_lock ; 
 int /*<<< orphan*/  vmci_transport_cleanup_work ; 

__attribute__((used)) static void FUNC6(struct vsock_sock *vsk)
{
	/* transport can be NULL if we hit a failure at init() time */
	if (!FUNC5(vsk))
		return;

	/* Ensure that the detach callback doesn't use the sk/vsk
	 * we are about to destruct.
	 */
	FUNC2(&FUNC5(vsk)->lock);
	FUNC5(vsk)->sk = NULL;
	FUNC3(&FUNC5(vsk)->lock);

	if (FUNC5(vsk)->notify_ops)
		FUNC5(vsk)->notify_ops->socket_destruct(vsk);

	FUNC2(&vmci_transport_cleanup_lock);
	FUNC0(&FUNC5(vsk)->elem, &vmci_transport_cleanup_list);
	FUNC3(&vmci_transport_cleanup_lock);
	FUNC1(&vmci_transport_cleanup_work);

	vsk->trans = NULL;
}