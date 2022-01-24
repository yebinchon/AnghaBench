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
struct fdt_header {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 

__attribute__((used)) static void FUNC11(const char *old, char *new,
			    int mem_rsv_size, int struct_size)
{
	int mem_rsv_off, struct_off, strings_off;

	mem_rsv_off = FUNC0(sizeof(struct fdt_header), 8);
	struct_off = mem_rsv_off + mem_rsv_size;
	strings_off = struct_off + struct_size;

	FUNC10(new + mem_rsv_off, old + FUNC3(old), mem_rsv_size);
	FUNC6(new, mem_rsv_off);

	FUNC10(new + struct_off, old + FUNC2(old), struct_size);
	FUNC5(new, struct_off);
	FUNC8(new, struct_size);

	FUNC10(new + strings_off, old + FUNC1(old),
		FUNC9(old));
	FUNC4(new, strings_off);
	FUNC7(new, FUNC9(old));
}