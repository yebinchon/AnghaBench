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
struct user_namespace {int dummy; } ;
struct cred {int dummy; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct aa_label*,int,unsigned int) ; 
 struct aa_label* FUNC1 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_label*) ; 

__attribute__((used)) static int FUNC4(const struct cred *cred, struct user_namespace *ns,
			    int cap, unsigned int opts)
{
	struct aa_label *label;
	int error = 0;

	label = FUNC1(cred);
	if (!FUNC3(label))
		error = FUNC0(label, cap, opts);
	FUNC2(label);

	return error;
}