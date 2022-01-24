#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ptid; } ;
struct TYPE_5__ {unsigned long address; TYPE_1__ feat; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {TYPE_2__ pagefault; } ;
struct uffd_msg {TYPE_3__ arg; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 unsigned int FAULT_FLAG_WRITE ; 
 int /*<<< orphan*/  UFFD_EVENT_PAGEFAULT ; 
 unsigned int UFFD_FEATURE_THREAD_ID ; 
 int /*<<< orphan*/  UFFD_PAGEFAULT_FLAG_WP ; 
 int /*<<< orphan*/  UFFD_PAGEFAULT_FLAG_WRITE ; 
 unsigned long VM_UFFD_WP ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct uffd_msg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct uffd_msg FUNC2(unsigned long address,
					    unsigned int flags,
					    unsigned long reason,
					    unsigned int features)
{
	struct uffd_msg msg;
	FUNC0(&msg);
	msg.event = UFFD_EVENT_PAGEFAULT;
	msg.arg.pagefault.address = address;
	if (flags & FAULT_FLAG_WRITE)
		/*
		 * If UFFD_FEATURE_PAGEFAULT_FLAG_WP was set in the
		 * uffdio_api.features and UFFD_PAGEFAULT_FLAG_WRITE
		 * was not set in a UFFD_EVENT_PAGEFAULT, it means it
		 * was a read fault, otherwise if set it means it's
		 * a write fault.
		 */
		msg.arg.pagefault.flags |= UFFD_PAGEFAULT_FLAG_WRITE;
	if (reason & VM_UFFD_WP)
		/*
		 * If UFFD_FEATURE_PAGEFAULT_FLAG_WP was set in the
		 * uffdio_api.features and UFFD_PAGEFAULT_FLAG_WP was
		 * not set in a UFFD_EVENT_PAGEFAULT, it means it was
		 * a missing fault, otherwise if set it means it's a
		 * write protect fault.
		 */
		msg.arg.pagefault.flags |= UFFD_PAGEFAULT_FLAG_WP;
	if (features & UFFD_FEATURE_THREAD_ID)
		msg.arg.pagefault.feat.ptid = FUNC1(current);
	return msg;
}