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
struct key {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct cred*) ; 
 int FUNC1 (struct cred*) ; 
 int FUNC2 (struct cred*,struct key*) ; 
 struct cred* FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct key *keyring)
{
	struct cred *new;
	int ret;

	new = FUNC3();
	if (!new)
		return -ENOMEM;

	ret = FUNC2(new, keyring);
	if (ret < 0) {
		FUNC0(new);
		return ret;
	}

	return FUNC1(new);
}