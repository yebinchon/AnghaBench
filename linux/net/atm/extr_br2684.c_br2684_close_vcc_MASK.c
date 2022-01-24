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
struct br2684_vcc {int /*<<< orphan*/  old_owner; TYPE_1__* atmvcc; int /*<<< orphan*/  (* old_push ) (TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  old_release_cb; int /*<<< orphan*/  brvccs; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  release_cb; int /*<<< orphan*/ * user_back; } ;

/* Variables and functions */
 int /*<<< orphan*/  devs_lock ; 
 int /*<<< orphan*/  FUNC0 (struct br2684_vcc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct br2684_vcc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct br2684_vcc *brvcc)
{
	FUNC3("removing VCC %p from dev %p\n", brvcc, brvcc->device);
	FUNC5(&devs_lock);
	FUNC1(&brvcc->brvccs);
	FUNC6(&devs_lock);
	brvcc->atmvcc->user_back = NULL;	/* what about vcc->recvq ??? */
	brvcc->atmvcc->release_cb = brvcc->old_release_cb;
	brvcc->old_push(brvcc->atmvcc, NULL);	/* pass on the bad news */
	FUNC2(brvcc->old_owner);
	FUNC0(brvcc);
}