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
 scalar_t__ SSB_ANY_ID ; 
 scalar_t__ SSB_ANY_REV ; 
 scalar_t__ SSB_ANY_VENDOR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ coreid ; 
 scalar_t__ revision ; 
 int /*<<< orphan*/  ssb_device_id ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ vendor ; 

__attribute__((used)) static int FUNC4(const char *filename,
			void *symval, char *alias)
{
	FUNC1(symval, ssb_device_id, vendor);
	FUNC1(symval, ssb_device_id, coreid);
	FUNC1(symval, ssb_device_id, revision);

	FUNC3(alias, "ssb:");
	FUNC0(alias, "v", vendor != SSB_ANY_VENDOR, vendor);
	FUNC0(alias, "id", coreid != SSB_ANY_ID, coreid);
	FUNC0(alias, "rev", revision != SSB_ANY_REV, revision);
	FUNC2(alias);
	return 1;
}