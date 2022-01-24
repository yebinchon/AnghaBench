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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int FDT_ERR_BADOVERLAY ; 
 int FDT_ERR_BADPHANDLE ; 
 int FDT_ERR_NOTFOUND ; 
 char* FUNC0 (void const*,int,char*,int*) ; 
 int FUNC1 (void const*,scalar_t__) ; 
 int FUNC2 (void const*,char const*) ; 
 scalar_t__ FUNC3 (void const*,int) ; 

__attribute__((used)) static int FUNC4(const void *fdt, const void *fdto,
			      int fragment, char const **pathp)
{
	uint32_t phandle;
	const char *path = NULL;
	int path_len = 0, ret;

	/* Try first to do a phandle based lookup */
	phandle = FUNC3(fdto, fragment);
	if (phandle == (uint32_t)-1)
		return -FDT_ERR_BADPHANDLE;

	/* no phandle, try path */
	if (!phandle) {
		/* And then a path based lookup */
		path = FUNC0(fdto, fragment, "target-path", &path_len);
		if (path)
			ret = FUNC2(fdt, path);
		else
			ret = path_len;
	} else
		ret = FUNC1(fdt, phandle);

	/*
	* If we haven't found either a target or a
	* target-path property in a node that contains a
	* __overlay__ subnode (we wouldn't be called
	* otherwise), consider it a improperly written
	* overlay
	*/
	if (ret < 0 && path_len == -FDT_ERR_NOTFOUND)
		ret = -FDT_ERR_BADOVERLAY;

	/* return on error */
	if (ret < 0)
		return ret;

	/* return pointer to path (if available) */
	if (pathp)
		*pathp = path ? path : NULL;

	return ret;
}