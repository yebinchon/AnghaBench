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
struct aa_ns {int dummy; } ;
struct aa_label {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int FUNC1 (char*,int,struct aa_ns*,struct aa_label*,int) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 

int FUNC3(char **strp, struct aa_ns *ns, struct aa_label *label,
		      int flags, gfp_t gfp)
{
	int size;

	FUNC0(!strp);
	FUNC0(!label);

	size = FUNC1(NULL, 0, ns, label, flags);
	if (size < 0)
		return size;

	*strp = FUNC2(size + 1, gfp);
	if (!*strp)
		return -ENOMEM;
	return FUNC1(*strp, size + 1, ns, label, flags);
}