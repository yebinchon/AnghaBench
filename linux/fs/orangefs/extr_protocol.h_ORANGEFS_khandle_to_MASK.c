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
struct orangefs_khandle {int /*<<< orphan*/  u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(const struct orangefs_khandle *kh,
				   void *p, int size)
{

	FUNC0(p, kh->u, 16);
	FUNC1(p + 16, 0, size - 16);

}