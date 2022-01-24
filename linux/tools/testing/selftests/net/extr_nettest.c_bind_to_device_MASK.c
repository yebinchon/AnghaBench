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

/* Variables and functions */
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_BINDTODEVICE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(int sd, const char *name)
{
	int rc;

	rc = FUNC1(sd, SOL_SOCKET, SO_BINDTODEVICE, name, FUNC2(name)+1);
	if (rc < 0)
		FUNC0("setsockopt(SO_BINDTODEVICE)");

	return rc;
}