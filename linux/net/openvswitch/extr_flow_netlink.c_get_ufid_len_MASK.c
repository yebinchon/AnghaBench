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
struct nlattr {int dummy; } ;

/* Variables and functions */
 size_t MAX_UFID_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int,char*,size_t,size_t) ; 
 size_t FUNC1 (struct nlattr const*) ; 

__attribute__((used)) static size_t FUNC2(const struct nlattr *attr, bool log)
{
	size_t len;

	if (!attr)
		return 0;

	len = FUNC1(attr);
	if (len < 1 || len > MAX_UFID_LENGTH) {
		FUNC0(log, "ufid size %u bytes exceeds the range (1, %d)",
			  FUNC1(attr), MAX_UFID_LENGTH);
		return 0;
	}

	return len;
}