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
struct fs_pin {int dummy; } ;
struct bsd_acct_struct {int /*<<< orphan*/  lock; TYPE_1__* ns; int /*<<< orphan*/  done; int /*<<< orphan*/  work; } ;
struct TYPE_2__ {int /*<<< orphan*/  bacct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bsd_acct_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct fs_pin*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bsd_acct_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct fs_pin*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct bsd_acct_struct* FUNC7 (struct fs_pin*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct fs_pin *pin)
{
	struct bsd_acct_struct *acct = FUNC7(pin);
	FUNC3(&acct->lock);
	FUNC2(acct);
	FUNC6(&acct->work);
	FUNC8(&acct->done);
	FUNC1(&acct->ns->bacct, pin, NULL);
	FUNC4(&acct->lock);
	FUNC5(pin);
	FUNC0(acct);
}