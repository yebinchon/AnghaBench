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
typedef  int uint32_t ;
struct fdt_reserve_entry {int dummy; } ;
struct fdt_header {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int,int) ; 
 int FDT_CREATE_FLAGS_ALL ; 
 int FDT_ERR_BADFLAGS ; 
 int FDT_ERR_NOSPACE ; 
 int /*<<< orphan*/  FDT_LAST_SUPPORTED_VERSION ; 
 int /*<<< orphan*/  FDT_SW_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,size_t const) ; 
 int /*<<< orphan*/  FUNC7 (void*,int) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,int) ; 

int FUNC10(void *buf, int bufsize, uint32_t flags)
{
	const size_t hdrsize = FUNC0(sizeof(struct fdt_header),
					 sizeof(struct fdt_reserve_entry));
	void *fdt = buf;

	if (bufsize < hdrsize)
		return -FDT_ERR_NOSPACE;

	if (flags & ~FDT_CREATE_FLAGS_ALL)
		return -FDT_ERR_BADFLAGS;

	FUNC9(buf, 0, bufsize);

	/*
	 * magic and last_comp_version keep intermediate state during the fdt
	 * creation process, which is replaced with the proper FDT format by
	 * fdt_finish().
	 *
	 * flags should be accessed with sw_flags().
	 */
	FUNC3(fdt, FDT_SW_MAGIC);
	FUNC8(fdt, FDT_LAST_SUPPORTED_VERSION);
	FUNC2(fdt, flags);

	FUNC7(fdt,  bufsize);

	FUNC6(fdt, hdrsize);
	FUNC5(fdt, FUNC1(fdt));
	FUNC4(fdt, 0);

	return 0;
}