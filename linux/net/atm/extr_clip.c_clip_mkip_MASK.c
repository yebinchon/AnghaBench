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
struct clip_vcc {int encap; int idle_timeout; int /*<<< orphan*/  old_pop; scalar_t__ old_push; int /*<<< orphan*/  last_use; scalar_t__ xoff; int /*<<< orphan*/ * entry; struct atm_vcc* vcc; } ;
struct atm_vcc {int /*<<< orphan*/  pop; scalar_t__ push; int /*<<< orphan*/  flags; struct clip_vcc* user_back; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_VF_IS_CLIP ; 
 int EBADFD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  clip_pop ; 
 scalar_t__ clip_push ; 
 int /*<<< orphan*/  jiffies ; 
 struct clip_vcc* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct clip_vcc*,struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct atm_vcc*) ; 

__attribute__((used)) static int FUNC4(struct atm_vcc *vcc, int timeout)
{
	struct clip_vcc *clip_vcc;

	if (!vcc->push)
		return -EBADFD;
	clip_vcc = FUNC0(sizeof(struct clip_vcc), GFP_KERNEL);
	if (!clip_vcc)
		return -ENOMEM;
	FUNC1("%p vcc %p\n", clip_vcc, vcc);
	clip_vcc->vcc = vcc;
	vcc->user_back = clip_vcc;
	FUNC2(ATM_VF_IS_CLIP, &vcc->flags);
	clip_vcc->entry = NULL;
	clip_vcc->xoff = 0;
	clip_vcc->encap = 1;
	clip_vcc->last_use = jiffies;
	clip_vcc->idle_timeout = timeout * HZ;
	clip_vcc->old_push = vcc->push;
	clip_vcc->old_pop = vcc->pop;
	vcc->push = clip_push;
	vcc->pop = clip_pop;

	/* re-process everything received between connection setup and MKIP */
	FUNC3(vcc);

	return 0;
}