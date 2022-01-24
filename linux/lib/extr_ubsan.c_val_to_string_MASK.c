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
typedef  int u_max ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct type_descriptor {int dummy; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct type_descriptor*,void*) ; 
 int FUNC2 (struct type_descriptor*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC4 (struct type_descriptor*) ; 
 scalar_t__ FUNC5 (struct type_descriptor*) ; 
 scalar_t__ FUNC6 (struct type_descriptor*) ; 

__attribute__((used)) static void FUNC7(char *str, size_t size, struct type_descriptor *type,
			void *value)
{
	if (FUNC5(type)) {
		if (FUNC4(type) == 128) {
#if defined(CONFIG_ARCH_SUPPORTS_INT128) && defined(__SIZEOF_INT128__)
			u_max val = get_unsigned_val(type, value);

			scnprintf(str, size, "0x%08x%08x%08x%08x",
				(u32)(val >> 96),
				(u32)(val >> 64),
				(u32)(val >> 32),
				(u32)(val));
#else
			FUNC0(1);
#endif
		} else if (FUNC6(type)) {
			FUNC3(str, size, "%lld",
				(s64)FUNC1(type, value));
		} else {
			FUNC3(str, size, "%llu",
				(u64)FUNC2(type, value));
		}
	}
}