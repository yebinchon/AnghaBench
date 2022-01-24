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
 scalar_t__ RIO_ANY_ID ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ asm_did ; 
 scalar_t__ asm_vid ; 
 scalar_t__ did ; 
 int /*<<< orphan*/  rio_device_id ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ vid ; 

__attribute__((used)) static int FUNC4(const char *filename,
			void *symval, char *alias)
{
	FUNC1(symval, rio_device_id, did);
	FUNC1(symval, rio_device_id, vid);
	FUNC1(symval, rio_device_id, asm_did);
	FUNC1(symval, rio_device_id, asm_vid);

	FUNC3(alias, "rapidio:");
	FUNC0(alias, "v", vid != RIO_ANY_ID, vid);
	FUNC0(alias, "d", did != RIO_ANY_ID, did);
	FUNC0(alias, "av", asm_vid != RIO_ANY_ID, asm_vid);
	FUNC0(alias, "ad", asm_did != RIO_ANY_ID, asm_did);

	FUNC2(alias);
	return 1;
}