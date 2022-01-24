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
struct vsock_sock {int /*<<< orphan*/  sk; int /*<<< orphan*/  trans; } ;
struct vmci_transport {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue_pair_max_size; int /*<<< orphan*/  queue_pair_min_size; int /*<<< orphan*/  queue_pair_size; int /*<<< orphan*/  lock; int /*<<< orphan*/ * sk; int /*<<< orphan*/  elem; int /*<<< orphan*/ * notify_ops; int /*<<< orphan*/  detach_sub_id; scalar_t__ consume_size; scalar_t__ produce_size; int /*<<< orphan*/ * qpair; void* qp_handle; void* dg_handle; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* VMCI_INVALID_HANDLE ; 
 int /*<<< orphan*/  VMCI_INVALID_ID ; 
 int /*<<< orphan*/  VMCI_TRANSPORT_DEFAULT_QP_SIZE ; 
 int /*<<< orphan*/  VMCI_TRANSPORT_DEFAULT_QP_SIZE_MAX ; 
 int /*<<< orphan*/  VMCI_TRANSPORT_DEFAULT_QP_SIZE_MIN ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (struct vsock_sock*) ; 

__attribute__((used)) static int FUNC4(struct vsock_sock *vsk,
				      struct vsock_sock *psk)
{
	vsk->trans = FUNC1(sizeof(struct vmci_transport), GFP_KERNEL);
	if (!vsk->trans)
		return -ENOMEM;

	FUNC3(vsk)->dg_handle = VMCI_INVALID_HANDLE;
	FUNC3(vsk)->qp_handle = VMCI_INVALID_HANDLE;
	FUNC3(vsk)->qpair = NULL;
	FUNC3(vsk)->produce_size = FUNC3(vsk)->consume_size = 0;
	FUNC3(vsk)->detach_sub_id = VMCI_INVALID_ID;
	FUNC3(vsk)->notify_ops = NULL;
	FUNC0(&FUNC3(vsk)->elem);
	FUNC3(vsk)->sk = &vsk->sk;
	FUNC2(&FUNC3(vsk)->lock);
	if (psk) {
		FUNC3(vsk)->queue_pair_size =
			FUNC3(psk)->queue_pair_size;
		FUNC3(vsk)->queue_pair_min_size =
			FUNC3(psk)->queue_pair_min_size;
		FUNC3(vsk)->queue_pair_max_size =
			FUNC3(psk)->queue_pair_max_size;
	} else {
		FUNC3(vsk)->queue_pair_size =
			VMCI_TRANSPORT_DEFAULT_QP_SIZE;
		FUNC3(vsk)->queue_pair_min_size =
			 VMCI_TRANSPORT_DEFAULT_QP_SIZE_MIN;
		FUNC3(vsk)->queue_pair_max_size =
			VMCI_TRANSPORT_DEFAULT_QP_SIZE_MAX;
	}

	return 0;
}