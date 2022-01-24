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
struct TYPE_2__ {int /*<<< orphan*/  sk; int /*<<< orphan*/  dead; } ;
struct sctp_association {scalar_t__ assoc_id; int /*<<< orphan*/  rmem_alloc; TYPE_1__ base; int /*<<< orphan*/  ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  assoc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_association*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  sctp_assocs_id ; 
 int /*<<< orphan*/  sctp_assocs_id_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct sctp_association *asoc)
{
	if (FUNC10(!asoc->base.dead)) {
		FUNC1(1, "Attempt to destroy undead association %p!\n", asoc);
		return;
	}

	FUNC6(asoc->ep);
	FUNC7(asoc->base.sk);

	if (asoc->assoc_id != 0) {
		FUNC8(&sctp_assocs_id_lock);
		FUNC4(&sctp_assocs_id, asoc->assoc_id);
		FUNC9(&sctp_assocs_id_lock);
	}

	FUNC2(FUNC3(&asoc->rmem_alloc));

	FUNC5(asoc, rcu);
	FUNC0(assoc);
}