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
struct vfsmount {int dummy; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 struct aa_label* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct aa_label*) ; 
 int FUNC2 (struct aa_label*,struct vfsmount*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_label*) ; 

__attribute__((used)) static int FUNC4(struct vfsmount *mnt, int flags)
{
	struct aa_label *label;
	int error = 0;

	label = FUNC0();
	if (!FUNC3(label))
		error = FUNC2(label, mnt, flags);
	FUNC1(label);

	return error;
}