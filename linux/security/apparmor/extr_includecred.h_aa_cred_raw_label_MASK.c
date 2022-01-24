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
struct cred {int dummy; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct aa_label* FUNC1 (struct cred const*) ; 

__attribute__((used)) static inline struct aa_label *FUNC2(const struct cred *cred)
{
	struct aa_label *label = FUNC1(cred);

	FUNC0(!label);
	return label;
}