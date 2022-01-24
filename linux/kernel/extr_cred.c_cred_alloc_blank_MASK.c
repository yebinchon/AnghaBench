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
struct cred {int /*<<< orphan*/  magic; int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRED_MAGIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cred*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cred_jar ; 
 struct cred* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct cred*,int /*<<< orphan*/ ) ; 

struct cred *FUNC4(void)
{
	struct cred *new;

	new = FUNC2(cred_jar, GFP_KERNEL);
	if (!new)
		return NULL;

	FUNC1(&new->usage, 1);
#ifdef CONFIG_DEBUG_CREDENTIALS
	new->magic = CRED_MAGIC;
#endif

	if (FUNC3(new, GFP_KERNEL) < 0)
		goto error;

	return new;

error:
	FUNC0(new);
	return NULL;
}