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
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int) ; 
 int CCW_DEVICE_ID_MATCH_CU_MODEL ; 
 int CCW_DEVICE_ID_MATCH_CU_TYPE ; 
 int CCW_DEVICE_ID_MATCH_DEVICE_MODEL ; 
 int CCW_DEVICE_ID_MATCH_DEVICE_TYPE ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  ccw_device_id ; 
 int cu_model ; 
 int cu_type ; 
 int dev_model ; 
 int dev_type ; 
 int match_flags ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(const char *filename,
			void *symval, char *alias)
{
	FUNC1(symval, ccw_device_id, match_flags);
	FUNC1(symval, ccw_device_id, cu_type);
	FUNC1(symval, ccw_device_id, cu_model);
	FUNC1(symval, ccw_device_id, dev_type);
	FUNC1(symval, ccw_device_id, dev_model);

	FUNC3(alias, "ccw:");
	FUNC0(alias, "t", match_flags&CCW_DEVICE_ID_MATCH_CU_TYPE,
	    cu_type);
	FUNC0(alias, "m", match_flags&CCW_DEVICE_ID_MATCH_CU_MODEL,
	    cu_model);
	FUNC0(alias, "dt", match_flags&CCW_DEVICE_ID_MATCH_DEVICE_TYPE,
	    dev_type);
	FUNC0(alias, "dm", match_flags&CCW_DEVICE_ID_MATCH_DEVICE_MODEL,
	    dev_model);
	FUNC2(alias);
	return 1;
}