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
 int /*<<< orphan*/  FUNC0 (char*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ IPACK_ANY_FORMAT ; 
 scalar_t__ IPACK_ANY_ID ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ device ; 
 scalar_t__ format ; 
 int /*<<< orphan*/  ipack_device_id ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ vendor ; 

__attribute__((used)) static int FUNC4(const char *filename,
			  void *symval, char *alias)
{
	FUNC1(symval, ipack_device_id, format);
	FUNC1(symval, ipack_device_id, vendor);
	FUNC1(symval, ipack_device_id, device);
	FUNC3(alias, "ipack:");
	FUNC0(alias, "f", format != IPACK_ANY_FORMAT, format);
	FUNC0(alias, "v", vendor != IPACK_ANY_ID, vendor);
	FUNC0(alias, "d", device != IPACK_ANY_ID, device);
	FUNC2(alias);
	return 1;
}